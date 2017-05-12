%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Interpolation Sequential Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 27-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function comparisons = interpolationSequentialSearch(V, target)
low = 1;
size = length(V);
comparisons= 0;

while (low <= size)
    if(V(low)==V(size))
        if(V(low) == target)
            return
        end
    else
        comparisons = comparisons+1;
        probe = target - V(low)/V(size)- V(low);
        if probe<0 || probe>1
            return
        end
        mid = round(low+probe*(size-low));
        err = target - mid;
        if err < probe *(norm(low,size))
            %perform linear search
            comparisons = linearSearch(V, target);
        end
        if (target < V(mid))
            size = mid-1;
        elseif (target > V(mid))
            low = mid+1;
        else
            break
            %target found
        end
    end
end
end