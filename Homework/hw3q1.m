%% Demand Curve
clc; clear; close all; 

q = @(p1,p2,I) 1000 - 10*p1 + 5*p2 + 2*I;

figure; 
p1 = 0:100; p2 = 50; I = 100;
plot(p1,q(p1,p2,I)); ylim([0 1500]); 
title('Own price and Demand'); xlabel('p1'); ylabel('Q1');

figure; 
p1 = 50; p2 = 0:100; I = 100;
plot(p2,q(p1,p2,I)); ylim([0 1500]); 
title('Price of related goods and Demand'); xlabel('p2'); ylabel('Q1');

figure; 
p1 = 50; p2 = 50; I = 0:200;
plot(I,q(p1,p2,I)); ylim([0 1500]); 
title('Income and Demand');xlabel('I'); ylabel('Q1');

figure;
p2 = 50; I = 100; p1 = 0:(1000 + 5*p2 + 2*I)/10;
plot(q(p1,p2,I),p1); hold on

p2 = 10; I = 100; p1 = 0:(1000 + 5*p2 + 2*I)/10;
plot(q(p1,p2,I),p1); 

p2 = 50; I = 200; p1 = 0:(1000 + 5*p2 + 2*I)/10;
plot(q(p1,p2,I),p1); 

ylabel('p1'); xlabel('Q1'); 
title('Demand Curve'); legend({'p2=50,I=100','p2=10,I=100','p2=50,I=200'},'FontSize',12)



