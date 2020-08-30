[NUMMI,TXTMI]=xlsread("MIS.xlsx");
[r c] = size(NUMMI);
MISmat = cell(r, 2);
for i=1:r
    MISmat{i,1}=TXTMI{i};
    MISmat{i,2}=NUMMI(i);
end
clear r c NUMMI TXTMI;