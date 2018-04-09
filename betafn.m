function[beta]=betafn(vo,vt,m)
%[beta]=betafn(vo,vt,m)
a=m*vo^2;
b=-(2*m*vo*vt+((vo-vt)^2));
c=m*vt^2;
[x1,x2]=quaardatic(a,b,c);
betatemp=[x1,x2];
[r,c]=find(betatemp*vo>vt);
beta=min(betatemp(r,c));

% function[beta]=betafn(pseq,ppip)
% beta=sqrt(ppip/pseq);
% end