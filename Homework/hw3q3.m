%% Corn and Oil
%{ 
  corn 
    fred: https://fred.stlouisfed.org/series/PMAIZMTUSDM
    IMF: http://www.imf.org/external/np/res/commod/index.aspx
  Oil
    fred: https://fred.stlouisfed.org/series/MCOILWTICO
    EIA: http://www.eia.gov/dnav/pet/pet_pri_spt_s1_d.htm
%}
clc; clear; close all

url = 'https://research.stlouisfed.org/fred2/'; %must use https
c = fred(url);

series = 'PMAIZMTUSDM';
startdate = '01/01/1986';
enddate = '8/01/2016';
d = fetch(c,series,startdate,enddate);
cornData = d.Data;
t = cornData(:,1);
t = datetime(t,'ConvertFrom','datenum');
corn = cornData(:,2);

series = 'MCOILWTICO';
startdate = '01/01/1986';
enddate = '8/01/2016';
d = fetch(c,series,startdate,enddate);
oilData = d.Data;
t2 = oilData(:,1);
t2 = datetime(t2,'ConvertFrom','datenum');
oil = oilData(:,2);

% time plot
plot(t,corn); hold on; plot(t,oil);
legend({'corn ($/mt)','oil ($/ba)'},'Location','Northwest','FontSize',14)

% scatter plot
figure;
scatter(corn,oil);
xlabel('Corn ($/mt)'); ylabel('Oil ($/ba)')
h = lsline; h.LineWidth = 1; h.Color = 'r';
text(240,60,['$$\rho(corn, oil) = ' num2str(corr(corn,oil),2) '$$'],'FontSize',12,'Interpreter','latex');






