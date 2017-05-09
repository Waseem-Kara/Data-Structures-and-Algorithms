%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Ternary Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 25-03-17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% function [numComparisons, currentIndex] = exponentialSearch(V, target)
% 
% numComparisons = 0;
% size = length(V);
% 
%     if (size == 0) 
%         currentIndex = - 1;
%     end
% 
%     bound = 1;
%     while (bound < size & V(bound) < target) 
%         numComparisons = numComparisons + 1;
%         bound = bound * 2;
%     end
% 
%     currentIndex = binarySearch(V, target, ceil(bound/2), min(bound, size));
% end
% 
%     %https://uk.mathworks.com/matlabcentral/answers/338542-debugging-help-for-the-exponential-search-code-below
%      
%     
%   function [curretnIndex] = binarySearch(V, target, imin, imax)
% 
%   
%   while (imin <= imax)  
%       %numComparisons = numComparisons + 1;
%       imid = (imax - imin) + 1;
%       if (V(imid) == target)
%        
%         curretnIndex =  imid;
%         break;
%       
%       elseif (V(imid) < target)
%         
%         imin = imid + 1;
%       else        
%         
%         imax = imid - 1;
%       end
%   end
%   curretnIndex = -1;
% end
function [numComparisons, currentIndex] = exponentialSearch(arr,x)
    numComparisons = 0;
    currentIndex = -1;
 n = length (arr);

     if arr(1) == x
         currentIndex = 1;
      end
      i=1;
      while i<n && arr(i) <= x
          numComparisons = numComparisons +1;
         i= i.*2;
        currentIndex = binarySearch(arr, i/2, min(i,n), x);
      end
      
    function cIdx = binarySearch(V, l, r, x)
          %currentIndex = -1;
          if r >= l
              mid = ceil(l+(r-l)/2);
              if V(mid) == x
              end
              %if the target is smaller than the middle element
              if V(mid) > x
                  cIdx = binarySearch(V, l, mid-1,x);
                  disp(cIdx);
              end
              cIdx = binarySearch(V,mid+1,r,x);
          end
      end
end


