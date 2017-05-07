%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Random Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 15-03-17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Random search algorithm
function [numComparisons, currentIndex] = randomSearch(V, target,maxComparisons)
    %init number of comparisons
    numComparisons = 0; 
    
    %Run loop until target is found
    while true
        %Find max and min values of array
        randomV = randi([min(V), max(V)]);
        %Perform a comparisoon, increment value
        numComparisons = numComparisons + 1;
        
        %If value is found break loop
         if(V(randomV) == target)
            break;
         end
        
         %Return false
         if(numComparisons >= maxComparisons)
            currentIndex = -1;
         end
         
     end       
end