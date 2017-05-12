%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Jump Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 16-03-17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% function comparisons = jumpSearch(V,target)
% size = length(V);
% jump = round(sqrt(size));
% currentIndex = 0;
%     while (V(jump)< target)
%         currentIndex = jump;
%         jump= jump +round(sqrt(size));
%         if (jump > size)
%             break
%         end
%     while (V(currentIndex) < target)
%        currentIndex=currentIndex+1;
%        if currentIndex == jump 
%             break
%        end
%        if V(currentIndex) == target
%        break
%        end
%     end
%     end
%     comparisons=currentIndex;
% end



function [numComparisons, currentIndex] = jumpSearch(V, target)
      
        size = length(V);
        %calculate jump by square rooting size of V
        m = floor(sqrt(size));      
        %Array starts from index 1
        initialIndex = 1;
        %reset number of comparisons
        numComparisons = 0;
        
        while (V(min(m, size)) < target)
        
            numComparisons = numComparisons +1;
            
            initialIndex = m;
            %calculate new jump
            m = m + floor(sqrt(size));
            %fail token
            if (initialIndex >= size)
                currentIndex = -1;
                return
            end
        end 
        
        while (V(initialIndex) < target)
            
            numComparisons = numComparisons +1;
            initialIndex = initialIndex + 1;
           %fail token
            if (initialIndex == min(m, size))
                currentIndex = -1;
            end
        end 
      
        %target found on first index
        if (V(initialIndex) == target)
            numComparisons = numComparisons +1;
            currentIndex = initialIndex; 
        end  
end