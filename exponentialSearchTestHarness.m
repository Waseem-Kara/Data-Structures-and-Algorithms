%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Ternary Search Test Harness
% Author:    Waseem Kara
% Rev. Date: 25-03-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;close all;clc;

maxArraySize = 1024;

for N = 1:maxArraySize    
    
    array = randperm(N);
    
    %sort array
    sortedArray = sort(array);
    
    for searchTarget = 1:N       
        comparisons(searchTarget) = exponentialSearch(sortedArray, searchTarget);        
    end
    
    min_comps(N) = min(comparisons);  
    avg_comps(N) = mean(comparisons);  
    max_comps(N) = max(comparisons);  
        
    clear comparisons;    
    
end

figure;

% Plot Observed 

plot([1:maxArraySize], min_comps,'g','LineWidth',3);hold on;
plot([1:maxArraySize], avg_comps,'y','LineWidth',3);
plot([1:maxArraySize], max_comps,'r','LineWidth',3);

legend('min','mean','max');

% Plot Expected

plot([1:maxArraySize], linspace(1,1,maxArraySize), 'k:');
plot([1:maxArraySize], linspace(1,log2(N +1)+1,maxArraySize), 'k:');
plot([1:maxArraySize], linspace(1,log2(N+1),maxArraySize), 'k:');

% Annotate Chart

xlabel('Array Size (N)','FontSize',14);
ylabel('Comparisons', 'FontSize', 14);
title('Ternary Search (Successful)','FontSize', 14);
xlim([0 maxArraySize]);
ylim([0 max(max_comps)]);

print -f1 -r300 -dbmp ternarySearchSuccessful.bmp