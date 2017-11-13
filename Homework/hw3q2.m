%% Food Expenditure
%{
    Data Source: Consumer Expenditure Survey Public-use Microdata 
    http://www.bls.gov/cex/pumd_data.htm
    Glossary: http://www.bls.gov/cex/csxgloss.htm
%}
clc; clear; close all

data = readtable('CEdiary_201501.csv');
data(data.FINCBEFX<=0 | data.FOODTOT<=0,:)=[];
income = data.FINCBEFX;
food = data.FOODTOT;
scatter(income,food); 
xlabel('Income'); ylabel('Food Expenditure')
h = lsline; h.LineWidth = 1; h.Color = 'r';








