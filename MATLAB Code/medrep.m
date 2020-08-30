[NUMMED,TXTMED,RAWMED]=xlsread('Median.xlsx');
[r c] = size(NUMMED);
med_mat=cell(r,3);
for i=1:r
    [city{i},state{i}]=strtok(TXTMED{i},',');
    med_mat{i,1}=city{i};
    med_mat{i,2}=state{i};
    med_mat{i,3}=NUMMED(i);
end
clear r c NUMMED TXTMED RAWMED;