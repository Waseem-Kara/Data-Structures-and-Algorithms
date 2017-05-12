%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Fibonaccian Search Algorithm
% Author:    Waseem Kara
% Rev. Date: 29-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function comparisons = fibonaccianSearch(V,target)
second= 1;
first= 1;
third= 2;
index = 0;
bound = 0;
size = length(V);
comparisons=0;

    while third<size
        second = first;
        first = third;
        third = first+second;
    end

    while third>1
        index = min(bound+second,size);
        if target < V(index)
            third = second;
            first=first-second;
            second= third-first;
            comparisons=comparisons+1;
        elseif target > V(index)
            third = first;
            first=second;
            second= third-first;
            comparisons=comparisons+1;
            bound= index;
        else
            break;
        end
    end
end