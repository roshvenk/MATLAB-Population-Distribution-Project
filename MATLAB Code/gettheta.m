function thetaopt=gettheta();
thetamat=[];
thetastates={};
CDS=getChrDis;
matURS=getUnempState;
GCState=gcsgs;
for i=1:length(CDS)
    thetamat(i)=(CDS{i,2}.*3 + matURS{i,2}.*2 + GCState{2,i}.*9)/150;
end
thetamat=thetamat';
thetamat1=sort(thetamat);
thetaopt= (mean(thetamat1)+max(thetamat1)+median(thetamat1)+min(thetamat1)+thetamat1(length(thetamat1)-1))/5;
