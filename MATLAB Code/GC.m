[x, GCdata, y]=xlsread("GC");
newmat={1:500;1:500;1:500};
num=1;
summ=0;
count=0;
for(i=1:500)
newmat{1,num}=y{i,3};
newmat{2,num}=y{i,2};
newmat{3,num}=y{i,4};
num=num+1;
end