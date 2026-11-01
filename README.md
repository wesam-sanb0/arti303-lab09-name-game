# ARTI 401 — Lab Assignment 09
## IO Stream and Database Manipulation (The Name Game)

**Course:** ARTI 401 — Artificial Intelligence Principles
**Lab:** 09

### Files
| File | Description |
|------|-------------|
| `namegame.pl` | Interactive Prolog program for building a name from letters |

### Lab Activity — The Name Game
The program provides the user with a menu to manipulate a set of letters dynamically during runtime. The user can build their name by adding, deleting, or rearranging letters.

### Database Manipulation Used
The program demonstrates the use of built-in dynamic database predicates:
- **`assertz/1`**: Adds a letter to the bottom of the list (Options 2 & 4).
- **`asserta/1`**: Adds a letter to the top of the list (Option 3).
- **`retract/1`**: Removes a specific letter from the database (Option 5).
- **`retractall/1`**: Removes all letters (Option 6).
- **`fail`**: Used in Option 1 to loop through all facts and print them.

### How to Run
1. Load the file:
```prolog
?- consult('namegame.pl').
