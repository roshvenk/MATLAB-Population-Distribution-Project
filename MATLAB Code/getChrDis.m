function out = getChrDis()
%getting the cell array with the chronic disease data by state
[num_cd,txt_cd,raw_cd]= xlsread('chrDis.xlsx');
num=1;
summ=0;
count = 0;
chrDisState = cell(51,2); %cell array with the chronic disease data
[r c] = size(txt_cd);
clear c;
for i=1:r
    %excluding extra states from the data file:
    if (txt_cd{i,1} ~= "Virgin Islands")%1
    if (txt_cd{i,1} ~= "United States")%2
    if (txt_cd{i,1} ~= "Guam")%3
    if (txt_cd{i,1} ~= "Puerto Rico")%4
    if (txt_cd{i,1} ~= "LocationDesc")%5   
    if(strcmp(txt_cd{i},txt_cd{i+1}))
        if (raw_cd{i,7}>0)
            summ=summ+raw_cd{i,7};  
            count = count+1;
        end
    else
        chrDisState{num, 1} = lower(txt_cd{i,1}); %writing state name
        chrDisState{num, 2}= summ/count; %writing value
        num=num+1;
        count = 0;
        summ=0;
    end
    end%4
    end%4
    end%3
    end%2
    end%1
end
out = chrDisState;
end
