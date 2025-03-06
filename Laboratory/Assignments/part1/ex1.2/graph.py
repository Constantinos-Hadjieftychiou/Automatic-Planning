import matplotlib.pyplot as plt

sizes = [100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200]
times = [2.66, 3.61, 5.70, 7.66, 11.40,
         14.42, 18.56, 25.31, 27.85, 48.74, 59.59]

plt.plot(sizes, times, marker='o')
plt.xlabel("Problem Size")
plt.ylabel("Solution Time (seconds)")
plt.title("Planner Performance vs. Problem Size")
plt.grid(True)
plt.show()
