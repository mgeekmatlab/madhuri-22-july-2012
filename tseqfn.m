function[tseq]=tseqfn(ccharge,vo,k,vt)
%[tseq]=tseqfn(ccharge,vo,k,vt)
tseq=1;
tseq=tseq*ccharge*vo;
tseq=tseq/(k*(vo-vt)^2);
end