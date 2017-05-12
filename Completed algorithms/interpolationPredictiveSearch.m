%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Interpolation Predictive Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 24-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function comparisons = interpolationPredictiveSearch(V, target)
low = 1;
size = length(V);
comparisons = 0;

while (low <= size)
    if(V(low)==V(size))
        if(V(low) == target)
            return
        end
    else
        comparisons = comparisons + 1;
        probe = target - V(low)/V(size)- V(low);
        if probe < 0 || probe > 1
            return
        end
        
        mid = floor(low+probe*(size-low));
        if (target < V(mid))
            size = mid - 1;
        elseif (target > V(mid))
            low = mid + 1;
        else
            break
        end
    end
end
end