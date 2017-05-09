%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Random Search Test Harness
% Author:    Waseem Kara
% Rev. Date: 10-03-17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;close all;clc;

maxArraySize = 1024;

%Maximum number of searches to perform
maxComparisons = 10;

for N = 1:maxArraySize    
    
    %Random array
    array = randperm(N);
    
    for searchTarget = 1:N
        %Call random search function
        comparisons(searchTarget) = randomSearch(array, searchTarget,maxComparisons);        
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
plot([1:maxArraySize], linspace(1,N,maxArraySize), 'k:');
plot([1:maxArraySize], linspace(1,N*N,maxArraySize), 'k:');

% Annotate Chart

xlabel('Array Size (N)','FontSize',14);
ylabel('Comparisons', 'FontSize', 14);
title('Random Search (Successful)','FontSize', 14);
xlim([0 maxArraySize]);
ylim([0 max(max_comps)]);

%Create bmp of graph
print -f1 -r300 -dbmp randomSearchSuccessful.bmp
