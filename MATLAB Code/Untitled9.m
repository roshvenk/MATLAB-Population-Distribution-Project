[NUMPDS,TXTPDS]=xlsread("PDState.xlsx");
for(i=1:51)
    PDState{1,i}=TXTPDS{i};
    PDState{2,i}=NUMPDS(i);
end