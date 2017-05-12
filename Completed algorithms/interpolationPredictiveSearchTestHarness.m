%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Interpolation Predictive Search Test Harness
% Author:    Waseem Kara
% Rev. Date: 24-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;close all;clc;
 
maxArraySize = 1024;
 
for N = 1:maxArraySize    
    
    array = 1:N;
    
    for searchTarget = 1:N
        comparisons(searchTarget) = interpolationPredictiveSearch(array, searchTarget);        
    end
    
    min_comps(N) = min(comparisons);  
    avg_comps(N) = mean(comparisons);  
    max_comps(N) = max(comparisons);  
        
    clear comparisons;    
    
end
 
figure;
 
% Plot Observed 
 
plot([1:maxArraySize], min_comps,'g','LineWidth',1);hold on;
%changed to dashed line as mean is hard to see
plot([1:maxArraySize], avg_comps,'y--','LineWidth',2);
plot([1:maxArraySize], max_comps,'r','LineWidth',3);
 
legend('min','mean','max');
 
% Plot Expected
 
plot([1:maxArraySize], linspace(1,1,maxArraySize), 'k:');
plot([1:maxArraySize], linspace(1,log(log(N)),maxArraySize), 'k:');
plot([1:maxArraySize], linspace(1,N/2,maxArraySize), 'k:');
 
% Annotate Chart
 
xlabel('Array Size (N)','FontSize',14);
ylabel('Comparisons', 'FontSize', 14);
title('Interpolation Predictive Search (Successful)','FontSize', 14);
xlim([0 maxArraySize]);
ylim([0 max(max_comps)]);
 
print -f1 -r300 -dbmp interpolationPredictiveSearchSuccessful.bmp
