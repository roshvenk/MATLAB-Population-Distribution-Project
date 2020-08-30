function GCState=gcsgs()
[NUMgcs,TXTgcs]=xlsread("GCStates.xlsx");
for i=1:51
    GCState{1,i}=TXTgcs{i};
    GCState{2,i}=NUMgcs(i);
end