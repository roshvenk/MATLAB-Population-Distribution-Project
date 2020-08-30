function out=getmedian()
[NUMMED,TXTMED,RAWMED]=xlsread('Median.xlsx');
med_mat={1:280;1:280};
for i=1:280
    [city,state]=strtok(TXTMED{i},',');
    c=strsplit(city,'-');
    [dispense, state]=strtok(state);
    if length(c)==1
            med_mat{1,i}=c{1};
            med_mat{2,i}=state;
            med_mat{3,i}=NUMMED(i);
    else
    med_mat{1,i}=c{1};
    med_mat{2,i}=state;
    med_mat{3,i}=NUMMED(i);
    end
    out=med_mat;
end