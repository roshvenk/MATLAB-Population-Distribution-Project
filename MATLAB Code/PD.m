[x, PDdata, y]=xlsread("PD");
[r c] = size(PDdata);
newmatPD= cell(r,3);
num=1;
for(i=1:175)
    newmatPD{num,1}=PDdata{i,4};
    newmatPD{num,2}=PDdata{i,3};
    newmatPD{num,3}=y{i,1};% Index exceeds array bounds.
    num=num+1;
end