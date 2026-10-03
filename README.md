# Quadratic Equation Solver

---

## Description

This program was created to solve equations:

ax^2 + bx + c = 0, where a ≠ 0

Program runs with two mods:
- interactive, where user enters arguments in console
- non-interactive, where user needs to provide a path to file with arguments

## How to run

1. Clone the repository to your local machine: 

```
git clone https://github.com/bLuDd1/methodoligies-lab1.git
```

2. Install Swift, if you have not installed yet.

3. Open a terminal and navigate to the folder with this program:

```
cd ./methodoligies-lab1/methodoligies-lab1-swift
```

4. Compile the whole app from files in the folder:

```
swiftc main.swift solver.swift nonInteractive.swift interactive.swift -o app
```

5. To run program in interactive mode:

``` 
./app
```

6. To run program in non-interactive mode
(you need to have a .txt file with three arguments, for example: 1 1 1, or check examples in files in repository)

```
./app path-to-file
```
