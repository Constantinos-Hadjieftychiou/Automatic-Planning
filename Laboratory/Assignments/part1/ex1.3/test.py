#!/usr/bin/env python3
import subprocess
import time
import os

# List of problem sizes to test (assumes corresponding problem files already exist).
problem_sizes = [10, 100]

# Define the planners and their command-line options.
# (Assuming that "./FF-v2.3/ff", "./lpg-td", and "./sgplan40" are executables available in your current directory or PATH.)
planners = {
    "FF": ["./FF-v2.3/ff", "-o", "domain.pddl", "-f"],
    "LPG-TD": ["./lpg-td", "-n", "1", "-o", "domain.pddl", "-f"],
    "SGPLAN40": ["./sgplan40", "-o", "domain.pddl", "-f"]
}


def get_problem(size):
    """
    Returns the problem filename based on the naming convention if it exists.
    """
    cwd = os.path.dirname(os.path.realpath(__file__))
    problem_file = f"drone_problem_d1_r0_l{size}_p{size}_c{size}_g{size}_ct2.pddl"
    file_path = os.path.join(cwd, problem_file)
    if not os.path.exists(file_path):
        print(f"Problem file {problem_file} not found!")
        return None
    return problem_file


def run_planner(planner_name, problem_file):
    """
    Runs the specified planner on the given problem file.
    Returns a dictionary with:
      - success: whether the planner ran without error
      - time: elapsed time in seconds
      - plan_actions: a heuristic count of plan actions (based on output)
      - output: the first 200 characters of the planner's output
    """
    cmd_base = planners[planner_name]
    cmd = cmd_base + [problem_file]
    start = time.time()
    try:
        result = subprocess.run(
            cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        elapsed = time.time() - start
        output = result.stdout + result.stderr
        # First heuristic: count lines starting with "("
        plan_actions = sum(1 for line in output.splitlines()
                           if line.strip().startswith("("))
        # If that returns 0, try an alternative: count lines containing "step"
        if plan_actions == 0:
            plan_actions = sum(1 for line in output.splitlines()
                               if "step" in line.lower())
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
    For each problem size, run each planner and record whether it solved the problem.
    Then, print a summary table showing for each planner:
      - The largest problem size it solved,
      - The number of actions in the plan,
      - The solution time.
    """
    results = {planner: [] for planner in planners}
    print("=== Part 1: Testing Increasing Problem Sizes ===")
    for size in problem_sizes:
        print(f"\nProblem size: {size}")
        problem_file = get_problem(size)
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
                "max_size": max_size,
                "plan_actions": best_res["plan_actions"],
                "time": best_res["time"]
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
    Uses the largest problem that FF solved and runs all planners on it.
    Then, prints a summary table with the time taken and plan actions for each planner.
    """
    ff_max_size = ff_summary.get("FF", {}).get("max_size")
    if ff_max_size is None:
        print("FF did not solve any problem. Cannot perform Part 2.")
        return
    print(
        f"\n=== Part 2: Comparing Planners on FF's Largest Solved Problem (size {ff_max_size}) ===")
    problem_file = get_problem(ff_max_size)
    if problem_file is None:
        print("Could not find FF's largest problem file.")
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
