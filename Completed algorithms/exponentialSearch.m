%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Exponential Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 27-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function comparisons = exponentialSearch(V, target)

size = length(V);
index = 2;
comparisons = 0;
      
      if V(1) == target
         currentIndex = 1;
      end

      while index<size && V(index) <= target
         index= index.*2;
         left= 1;
         right= length(V);
        while (left<=right)
            mid= round((left+right)/2);
            if (V(mid) == target)
            break
            elseif (V(mid) > target)
            right = mid -1;
            comparisons=comparisons + 1;
            elseif (V(mid) < target)
            left= mid+1;
            comparisons=comparisons + 1;
            end
        end
      end
end
