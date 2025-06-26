% Edges between locations in Thane (distances are approx. in km)
edge(majiwada, vartak_nagar, 3).
edge(majiwada, teen_hath_naka, 2).
edge(teen_hath_naka, vartak_nagar, 2).
edge(teen_hath_naka, kolshet, 4).
edge(kolshet, hiranandani_estate, 3).
edge(majiwada, kolshet, 5).
edge(vartak_nagar, hiranandani_estate, 6).

% Heuristic values (straight-line estimates to hiranandani_estate)
h(majiwada, 5).
h(vartak_nagar, 4).
h(teen_hath_naka, 3).
h(kolshet, 2).
h(hiranandani_estate, 0).  % Goal
