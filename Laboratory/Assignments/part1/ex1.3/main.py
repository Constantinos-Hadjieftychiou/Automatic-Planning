#!/usr/bin/env python3
import subprocess
import time
import os

# List of problem sizes to test.
# Each problem uses the same value for locations, persons, crates, and goals.
problem_sizes = [100, 110, 120, 130, 140, 150]

# Define the planners and their command-line options.
# (Assuming that "./FF-v2.3/ff", "./lpg-td", and "./sgplan40" are executables available in your current directory or PATH.)
planners = {
    "FF": ["./FF-v2.3/ff", "-o", "domain.pddl", "-f"],
    "LPG-TD": ["./lpg-td", "-n", "1", "-o", "domain.pddl", "-f"],
    "SGPLAN40": ["./sgplan40", "-o", "domain.pddl", "-f"]
}


def wait_for_file_stability(file_path, wait_time=0.5, max_checks=20):
    """
    Wait until the file at file_path exists and its size remains stable for wait_time seconds.
    Returns True if stable, False otherwise.
    """
    last_size = -1
    for _ in range(max_checks):
        if os.path.exists(file_path):
            current_size = os.path.getsize(file_path)
            if current_size == last_size and current_size > 0:
                return True
            last_size = current_size
        time.sleep(wait_time)
    return False


def generate_problem(size):
    """
    Calls generate-problem.py with the given size parameters.
    Returns the name of the generated problem file or None if generation failed.
    """
    cwd = os.path.dirname(os.path.realpath(__file__))
    problem_file = f"drone_problem_d1_r0_l{size}_p{size}_c{size}_g{size}_ct2.pddl"
    file_path = os.path.join(cwd, problem_file)

    # Remove any existing file so we start fresh.
    if os.path.exists(file_path):
        os.remove(file_path)

    cmd = [
        "python3", "generate-problem.py",
        "-d", "1",       # 1 drone
        "-r", "0",       # 0 carriers
        "-l", str(size),
        "-p", str(size),
        "-c", str(size),
        "-g", str(size)
    ]
    try:
        subprocess.run(cmd, check=True, cwd=cwd)
    except subprocess.CalledProcessError as e:
        print(f"Error generating problem for size {size}: {e}")
        return None

    # Wait until the file exists and its size is stable.
    if not wait_for_file_stability(file_path):
        print(f"File {problem_file} did not stabilize in time.")
        return None

    return problem_file


def run_planner(planner_name, problem_file):
    """
    Runs the specified planner on the given problem file.
    Returns a dictionary with:
      - success: whether the planner solved the problem
      - time: elapsed time in seconds
      - plan_actions: a count of plan actions (heuristically counted from output)
      - output: a snippet of the planner's output (first 200 characters)
    """
    cmd_base = planners[planner_name]
    cmd = cmd_base + [problem_file]
    start = time.time()
    try:
        result = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                text=True)
        elapsed = time.time() - start
        output = result.stdout + result.stderr
        plan_actions = sum(1 for line in output.splitlines()
                           if line.strip().startswith("("))
        success = True
    except Exception as e:
        elapsed = None
        output = str(e)
        plan_actions = None
        success = False

    return {
        "success": success,
        "time": elapsed,
        "plan_actions": plan_actions,
        "output": output[:200]
    }


def part1():
    """
    For each problem size, run each planner and record if it solved the problem.
    Then, produce a summary table indicating for each planner the largest problem solved,
    the number of actions in the plan, and the solution time.
    """
    results = {planner: [] for planner in planners}
    print("=== Part 1: Testing Increasing Problem Sizes ===")
    for size in problem_sizes:
        print(f"\nProblem size: {size}")
        problem_file = generate_problem(size)
        if problem_file is None:
            continue
        for planner in planners:
            print(f"Running {planner} on {problem_file} ...")
            res = run_planner(planner, problem_file)
            results[planner].append((size, res))
            status = "Solved" if res["success"] else "Failed/Timeout"
            plan_len = res["plan_actions"] if res["plan_actions"] is not None else "-"
            time_str = f"{res['time']:.2f}" if res["time"] is not None else "N/A"
            print(f"{planner}: {status} in {time_str} s, plan actions: {plan_len}")

    summary = {}
    for planner, res_list in results.items():
        solved = [(size, res) for (size, res) in res_list if res["success"]]
        if solved:
            max_size, best_res = max(solved, key=lambda x: x[0])
            summary[planner] = {
                "max_size": max_size, "plan_actions": best_res["plan_actions"], "time": best_res["time"]
            }
        else:
            summary[planner] = {"max_size": None,
                                "plan_actions": None, "time": None}

    print("\n=== Summary for Part 1 ===")
    print("{:<10} {:<20} {:<20} {:<10}".format(
        "Planner", "Max Problem Size", "Plan Actions", "Time (s)"))
    for planner, info in summary.items():
        max_size = info["max_size"] if info["max_size"] is not None else "N/A"
        plan_actions = info["plan_actions"] if info["plan_actions"] is not None else "N/A"
        time_taken = f"{info['time']:.2f}" if info["time"] is not None else "N/A"
        print("{:<10} {:<20} {:<20} {:<10}".format(
            planner, max_size, plan_actions, time_taken))
    return summary


def part2(ff_summary):
    """
    Use the largest problem that FF solved and run all planners on it.
    Then, produce a table with the time taken and plan size for each planner.
    """
    ff_max_size = ff_summary.get("FF", {}).get("max_size")
    if ff_max_size is None:
        print("FF did not solve any problem. Cannot perform Part 2.")
        return
    print(
        f"\n=== Part 2: Comparing Planners on FF's Largest Solved Problem (size {ff_max_size}) ===")
    problem_file = generate_problem(ff_max_size)
    if problem_file is None:
        print("Could not generate FF's largest problem file.")
        return

    results = {}
    for planner in planners:
        print(f"Running {planner} on {problem_file} ...")
        res = run_planner(planner, problem_file)
        results[planner] = res
        status = "Solved" if res["success"] else "Failed/Timeout"
        plan_len = res["plan_actions"] if res["plan_actions"] is not None else "-"
        time_str = f"{res['time']:.2f}" if res["time"] is not None else "N/A"
        print(f"{planner}: {status} in {time_str} s, plan actions: {plan_len}")

    print("\n=== Summary for Part 2 ===")
    print("{:<10} {:<15} {:<15}".format("Planner", "Time (s)", "Plan Actions"))
    for planner, res in results.items():
        time_taken = f"{res['time']:.2f}" if res["time"] is not None else "N/A"
        plan_actions = res["plan_actions"] if res["plan_actions"] is not None else "N/A"
        print("{:<10} {:<15} {:<15}".format(planner, time_taken, plan_actions))


def main():
    print("Comparing Planners: FF, LPG-TD, SGPLAN40\n")
    ff_summary = part1()
    part2(ff_summary)


if __name__ == "__main__":
    main()
