[NUMx,TXTURS]=xlsread("URS.xlsx");
matURS={1:51;1:51};
for i=1:51
    matURS{1,i}=TXTURS{i};
matURS{2,i}=NUMx(i);
end