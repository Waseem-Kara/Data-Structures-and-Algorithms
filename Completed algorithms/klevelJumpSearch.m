%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     K-level Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 29-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function comparisons = klevelJumpSearch(V, target, level)
size = length(V);
q = 0;
f = size/level;

for i = 1:level
    %call jump search algorithm
    comparisons= jumpSearch(V((q * f)+1):(i + 1) * f, target);
    if comparisons < f
        break
    end
    q = q + 1;
end