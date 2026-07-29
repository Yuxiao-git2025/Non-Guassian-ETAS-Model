%% loading data
load('Data\ExampleData.mat');

%% Calculation
dT1=0.1;
dT2=20;
NT=12;
[AIC,AICnp,paramfs,fai,lambda,Mu0,bkgd,trig,TransN,fs,dTs]=...
    Non_GETASFitting(time,mag,Mmin,dT1,dT2,NT);




%% Plot AIC
minID=Non_GPlotAIC(dTs,AICnp,fs,paramfs);

%% Plot Mu0
Non_GPlotLambda0(fai,Mu0,time,mag,minID);

%% Plot RPP
Non_GPlotResidual(TransN,minID);

