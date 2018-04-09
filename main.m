clc
clear all
%this is main file
%% assumptions

tm=10; % 10unit, time for multiplication
ta=2;  % 2units, time for addition
ca=1;  % 1unit, capacitanco of adder
cm=5;  % 5units, capacitanco of multiplier, assumed 5 times capacitanco of adder

tm1=6;
tm2=4;

%% voltage
vt=.6;
vo=5;

k=1;%assumed
m=2;



%% calculation 
ccharge=cm+ca; 
ctotal=ccharge;

[tseq]=tseqfn(ccharge,vo,k,vt)
f=1/tseq
[pseq]=pseqfn(ctotal,vo,f)
[beta]=betafn(vo,vt,m)


vpip=beta*vo
[tpip]=tpipfn(ccharge,vo,k,vt,m,beta)
[ppip]=ppipfn(ctotal,vo,f,beta)

ratio=beta^2;
ratio_percent=100*ratio
% [beta]=betafn(pseq,ppip)