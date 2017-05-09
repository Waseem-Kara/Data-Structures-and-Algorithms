%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Binary Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 25-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = binarySearch(V, target)
      
            low = 0; 
            high = length(V);             
            %Find middle of array using high and low
            middle = ceil((low + high) / 2);
            %fail tocken
            currentIndex = -1;
            %reset comparisons to null
            numComparisons = 0;      
                            
            while low <= high & isequal(currentIndex,-1)
               
                numComparisons = numComparisons + 1; 
                
                %Check search target is in middle of V
                if (target == V(middle))
                    currentIndex = middle;
                else                
                %find new high low middle values
                if (target < V(middle))        
                    high = middle - 1; 
                else  
                    low = middle + 1; 
                end
                middle = ceil((low + high) / 2);    
                end                  
            end   