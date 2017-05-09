%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Jump Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 16-03-17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = fibonacciSearch(V, target)
      
        
F = {0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765,10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296,433494437, 701408733, 1134903170, 1836311903};

  numComparisons = 0;
  currentIndex = -1;
  
  if length(V) > 1
    k=binarySearchGEQ(F, length(F)/length(int), N);
  else
    k=1;
  end

  
  numComparisons = numComparisons + 1;

  offs = 0;
  while k > 0
  
    idx = offs + F(k);

    if idx >= N || target < V(idx)
    
      numComparisons = numComparisons + 1;
      continue;
    
    elseif target > V(idx)
    
      numComparisons = numComparisons + 1;
      offs = idx;
      k = k - 1;
    
    else 
    
      numComparisons = numComparisons + 1;
      currentIndex = idx;
    end
  end
  currentIndex = -1;

