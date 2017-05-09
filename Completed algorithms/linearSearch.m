%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Linear Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 10-03-17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = linearSearch(V, target)
      
    numComparisons = 0; 
    
    for currentIndex=1:length(V)       
        numComparisons = numComparisons + 1;
        if(V(currentIndex) == target)
            break;
        end
    end  
    
    if(V(currentIndex)~=target)
        currentIndex = -1;
    end
end