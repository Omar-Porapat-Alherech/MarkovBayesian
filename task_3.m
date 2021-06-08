% close all
% clc
% clear 
% arr = zeros(1,2000);
% arr(1) = -10;
% accepted_samples=0;
% rejected_samples=0;
% for count = 2:2000
%     current_value = arr(count-1);
%     proposed = normrnd(current_value,sqrt(0.5));
%     acceptance_probability = target_1(proposed)/target_1(current_value);
%     if(rand<acceptance_probability)
%         arr(count)=proposed;
%         accepted_samples = accepted_samples + 1;
%     else 
%         arr(count)=arr(count-1);
%         rejected_samples = rejected_samples+1;
%     end
% end
% accepted_samples;
% rejected_samples;
% %% Normal Distribution
% %Calculating the histogram
% [count,bin] = hist(arr,10); %Not plotting, simply getting the calculations
% binmax = 5;
% binmin = 0;
% % Max and min values will be used to scale the histogram to view the curve 
% %Scaling - counts value * mean interval width of the histogram, scaling
% %the histogram to 1
% scaled = count/ sum(count*mean(diff(bin)));
% %Calculating x and Y values of the scaled pdf
% x = linspace(min(arr),max(arr),2000); % Generates 1000 points between min and max
% %True Target DIstribution
% y_norm = normpdf(x,3,sqrt(2));
% figure;
% mean_of_samples = mean(arr)
% title('Fitted to Target distribution \mu=3 \sigma = 2');
% xlabel('X');
% ylabel('Probability Density');
% hold on;
% bar(bin,scaled,1);
% plot(x,y_norm,'-o');
% hold off;
% % Plot Markov chain
% figure;
% title('Markov chain, start point at -10');
% plot(arr)
%% Target 2
close all
clc
clear 
arr = zeros(1,2000);
arr(1) = -5;
accepted_samples=0;
rejected_samples=0;
for count = 2:2000
    current_value = arr(count-1);
    proposed = normrnd(current_value,sqrt(0.5));
    acceptance_probability = target_2(proposed)/target_2(current_value);
    if(rand<acceptance_probability)
        arr(count)=proposed;
        accepted_samples = accepted_samples + 1;
    else 
        arr(count)=arr(count-1);
        rejected_samples = rejected_samples+1;
    end
end
accepted_samples;
rejected_samples;
% Normal Distribution
%Calculating the histogram
[count,bin] = hist(arr,25); %Not plotting, simply getting the calculations
binmax = 5;
binmin = 0;
% Max and min values will be used to scale the histogram to view the curve 
%Scaling - counts value * mean interval width of the histogram, scaling
%the histogram to 1
scaled = count/ sum(count*mean(diff(bin)));
%Calculating x and Y values of the scaled pdf
x = linspace(min(arr),max(arr),2000); % Generates 1000 points between min and max
%True Target DIstribution
nu=5;
y_norm=tpdf(x-2,nu);
figure;
mean_of_samples = mean(arr)
title('Fitted to Target distributio=n 2 \nu = 5');
xlabel('X');
ylabel('Probability Density');
hold on;
bar(bin,scaled,1);
plot(x,y_norm,'-o');
hold off;
% Plot Markov chain
figure;
title('Markov chain, start point at -10');
plot(arr)

