**Tower of Hanoi Solver**.

The Tower of Hanoi Solver uses a Python implementation of the Hanoi algorithm to solve this classic puzzle for any number of disks by implementing an iterative approach to the problem.

**Origin of the Tower of Hanoi Solver**

This began as one of five certification projects that I completed for the freeCodeCamp Python Developer Certification course. I have since upgraded it to take user input and to provide a printout of each move made in the process of solving the Tower of Hanoi.

**How It Works**

The Tower of Hanoi is a classical mathematics and logic puzzle that uses 3 towers and any number (n) disks. The goal of this puzzle is to move all of the disks from the first tower to the third tower using 2 rules:

1. Only one disk may be moved at a time.
2. A larger disk cannot be placed on a smaller disk at any time.

This implementation takes an iterative approach to the Tower of Hanoi and uses an iterative algorithm to solve the Tower in the minimum number of moves required (calculated using the formula 2^n - 1, where n represents the number of disks at the beginning of the puzzle). The iterative approach taken here will solve the Tower of Hanoi in the smallest number of moves for any number of disks because it identifies the patterns in the movement of each disk on any given turn.

**Features**

1. Allows for user input to determine the number of disks.
2. Provides clear output showing each move.
3. The efficient iterative alogrithm solves the Tower of Hanoi in 2^n - 1 moves.
4. This algorithm handles between 1 and 20+ disks.

**Planned Future Improvements**

1. Performance optimization to handle a very large number of disks
2. Improvements to the user interface
3. Animated visualizations of disk movements
