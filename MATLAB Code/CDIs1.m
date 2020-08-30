[NUMCDIS,TXTCDIS,CDIS1]= xlsread('CDIS.xlsx');
newmat= {1:51; 1:51};
num=1;
summ=0;
count = 0;
for i=1:119680
    %here, to make less shitty, you can do ONE if statemt with verything or
    %whatever, just dont let this that shitty
    if (TXTCDIS{i,1} ~= "Virgin Islands")
    if (TXTCDIS{i,1} ~= "United States")
    if (TXTCDIS{i,1} ~= "Guam")
    if (TXTCDIS{i,1} ~= "Puerto Rico")
    if (TXTCDIS{i,1} ~= "LocationDesc")    
    if(strcmp(TXTCDIS{i},TXTCDIS{i+1}))
        if (isa(CDIS(i),'double'))
            summ=summ+CDIS(i);  
            count = count+1;
        end
    else
        newmat{1, num} = TXTCDIS{i,1};
        newmat{2, num}=summ/count;
        num=num+1;
        count = 0;
        summ=0;
    end
    end
    end
    end
    end
    end
end
