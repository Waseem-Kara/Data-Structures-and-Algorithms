%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Ternary Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 20-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function comparisons = ternarySearch(V, target)
first = ceil(length(V)/3);
second = ceil(2*length(V)/3);
comparisons=0;

    if V(first) == target
        index = first;
    elseif V(first) > target
        %index = ternarySearch(V(1: first-1), target);
        comparisons=comparisons+ternarySearch(V(1: first-1), target)+1;
    elseif V(second) == target
        index = first;
    elseif V(second) > target
        %index = ternarySearch(V(first+1: second-1), target);
        comparisons=comparisons+ternarySearch(V(first+1: second-1), target)+1;
    else 
        %index = ternarySearch(V(second+1: length(V)), target);
        comparisons=comparisons+ternarySearch(V(second+1: length(V)), target)+1;
    end
end