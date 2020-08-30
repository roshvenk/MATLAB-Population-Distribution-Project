[NUMUC,TXTUC,RAWUC]=xlsread('URC.xlsx');
unempcity = {1:339;1:339};
for i=1:339
    unempcity{1,i}=TXTUC{i,1};
    unempcity{2,i}=NUMUC(i,2);
end
