%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Ternary Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 25-03-17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = ternarySearch(V, target)
      
        
min = 1;
    max = length(V);

    middle1 = ceil((2*min+max)/3); 
    middle2 = ceil((min+2*max)/3); 
    numComparisons = 0;
    
    if middle1 == target
        numComparisons = numComparisons + 1;
        currentIndex = middle1;
        
    end
    if middle2 == target
        numComparisons = numComparisons + 1;
        currentIndex = middle2;
    end

    while middle1 ~= middle2
        numComparisons = numComparisons + 1;
    
        middle1 = ceil((2*min+max)/3);
        middle2 = ceil((min+2*max)/3);

        if target <= V(middle1)
            max = middle1;
      
        elseif target > V(middle1) & target <= V(middle2)
            
             min= middle1; 
             max = middle2;
            
        else
            min = middle2;
        end
    end

    if target == V(max)
        currentIndex = max;
    else
        currentIndex = -1;
    end

   



% numComparisons = 0;
% if r>=l 
%     
%         mid1 = l + (r-l)/3;
%         mid2 = r -  (r-l)/3;
%         if V(mid1) == target
%             currentIndex = mid1;
%         end
%         if V(mid2) == target
%             currentIndex = mid2;
%         end
%         if target < V(mid1)
%             ternarySearch(l,mid1-1,target);          
%             
%         elseif target>V(mid2)
%             ternarySearch(mid2+1,r,target);
%         else
%             ternarySearch(mid1+1,mid2-1,target);
% 
%         end
% end
%     currentIndex = currentIndex - 1;
    
    
    
    
    