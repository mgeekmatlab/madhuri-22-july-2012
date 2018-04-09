function[tpip]=tpipfn(ccharge,vo,k,vt,m,b)
%[tpip]=tpipfn(ccharge,vo,k,vt,m,b)
tpip=1;
tpip=tpip*(ccharge/m)*(b*vo);
tpip=tpip/(k*(b*vo-vt)^2);
end