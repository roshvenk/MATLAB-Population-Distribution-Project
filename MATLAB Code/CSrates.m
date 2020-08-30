[NUMCS,TXTCS,RAW]=xlsread("CrimesS.xlsx");
CSmat = cell(51,2);
for i=1:51
    CSmat{i,1}=TXTCS{i};
    CSmat{i,2}=NUMCS(i);
end
