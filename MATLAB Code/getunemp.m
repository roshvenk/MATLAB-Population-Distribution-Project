function out=getunemp()
[NUMUC,TXTUC,RAWUC]=xlsread('URC.xlsx');
unempcity = {1:339,1:339};
for i=1:339
    c=strsplit(TXTUC{i,1},'-');
    if length(c)==1
        [city, state]=strtok(c{1},',');
        unempcity{1,i}=city;
        unempcity{2,i}=NUMUC(i,2);
    else
            unempcity{1,i}=c{1};
            unempcity{2,i}=NUMUC(i,2);
    end
          out=unempcity;  
end
