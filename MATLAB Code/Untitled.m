 newmat=[1:51];
num=1;
summ=0;

for(i=1:119680)
    if(strcmp(CDIS1{i},CDIS1{i+1}) && isa(CDIS1{i,7},'double') )
        if (CDIS1{i,1} ~= "Virgin Islands")
            summ=summ+CDIS1{i,7};
             fprintf('%s \n',CDIS1{i});
        end
    else
       
        newmat(num)=summ;
        num=num+1;
        summ=0;
    end
end
