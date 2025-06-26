% ----------------------
% A* Pathfinder in Thane
% ----------------------

% Define edges between locations (Distance in km)
edge(majiwada, vartak_nagar, 3).
edge(majiwada, teen_hath_naka, 2).
edge(teen_hath_naka, vartak_nagar, 2).
edge(teen_hath_naka, kolshet, 4).
edge(kolshet, hiranandani_estate, 3).
edge(majiwada, kolshet, 5).
edge(vartak_nagar, hiranandani_estate, 6).

% To make edges bidirectional
connected(X, Y, D) :- edge(X, Y, D).
connected(X, Y, D) :- edge(Y, X, D).

% Heuristic values (estimated straight-line distance to hiranandani_estate)
h(majiwada, 5).
h(vartak_nagar, 4).
h(teen_hath_naka, 3).
h(kolshet, 2).
h(hiranandani_estate, 0).

% ----------------------
% A* Algorithm Logic
% ----------------------

% Main predicate to start the search
astar(Start, Goal, Path, Cost) :-
    astar_search([node(Start, [], 0, 0)], Goal, RevPath, Cost),
    reverse(RevPath, Path).

% Goal reached
astar_search([node(Goal, Path, G, _)|_], Goal, [Goal|Path], G).

% Explore next nodes
astar_search([node(State, Path, G, _)|Rest], Goal, FinalPath, Cost) :-
    findall(node(Next, [State|Path], GNew, FNew),
            (connected(State, Next, StepCost),
             \+ member(Next, Path),  % Avoid cycles
             GNew is G + StepCost,
             h(Next, H),
             FNew is GNew + H),
            Children),
    append(Rest, Children, Open),
    sort(4, @=<, Open, Sorted),  % Sort by F = G + H
    astar_search(Sorted, Goal, FinalPath, Cost).

% ----------------------
% Sample Queries:
% ?- astar(majiwada, hiranandani_estate, Path, Cost).
% ?- astar(vartak_nagar, hiranandani_estate, Path, Cost).
% ----------------------
