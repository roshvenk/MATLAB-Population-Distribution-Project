[NUMPDS,TXTPDS]=xlsread("PDState.xlsx");
[r c] = size(TXTPDS);
PDState = cell(r, 2);
for(i=1:r)
    PDState{i,1}=TXTPDS{i};
    PDState{i,2}=NUMPDS(i);
end