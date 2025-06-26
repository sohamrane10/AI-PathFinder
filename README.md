# 🚀 A* Pathfinder in Prolog – Thane City Edition

This project implements the A* (A-Star) Search Algorithm using **SWI-Prolog** to find the shortest path between different localities in **Thane, India**.

---

## 📍 Locations Modeled in Thane, Maharashtra, India
- Majiwada
- Teen Hath Naka
- Kolshet
- Vartak Nagar
- Hiranandani Estate

Each connection is defined with realistic distances in kilometers, and heuristic estimates guide the search.

---

## 🧠 Tech Stack
- Language: **Prolog (SWI-Prolog)**
- Algorithm: **A* Search**
- No external libraries — pure logic-based pathfinding
- Modular design (all-in-one `astar.pl`)

---

## 🔎 Sample Queries
```prolog
?- astar(majiwada, hiranandani_estate, Path, Cost).
?- astar(vartak_nagar, kolshet, Path, Cost).
?- astar(kolshet, vartak_nagar, Path, Cost).
📌 Key Learnings
Recursive problem-solving with Prolog

Heuristic-based decision making

Graph traversal using priority logic

Stack optimization & debugging infinite recursion

🛠️ How to Run
Open SWI-Prolog

Paste and run:

prolog
Copy
Edit
?- consult('C:/YourPath/astar.pl').
Run any query like:

prolog
Copy
Edit
?- astar(majiwada, hiranandani_estate, Path, Cost).
📁 File Structure
astar.pl – Main file containing edges, heuristics, and logic

🤝 Contributions
Feel free to fork and extend this for grid-based maps or real-time visual pathfinding.

📜 License
MIT License

yaml
Copy
Edit

---

### 🧾 **Short Explanation Paragraph**

This project implements the A* pathfinding algorithm using Prolog to simulate route optimization across different locations in Thane city. By defining edges and heuristics manually, it uses cost + heuristic evaluation to find the most efficient paths. The project handles recursive logic, stack overflows, and bidirectional routes — making it a great hands-on example of applying AI search techniques to real-world-like geographies.
