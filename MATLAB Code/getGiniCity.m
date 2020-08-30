function giniCity = getGiniCity()
%getting the cell array with the gini coefficient data by city
    [num_gc, txt_gc, raw_gc]=xlsread("giniCoefCity");
    [r c] = size(raw_gc);
    giniCity= cell(r,3); %cell array with the gini coefficient data
    num=1; 
    summ=0;
    count=0;
    for(i=1:r)
        giniCity{num,1}= lower(raw_gc{i,3}); %writing state name
        giniCity{num,2}= raw_gc{i,2}; %writing city name
        giniCity{num,3}= raw_gc{i,4};  %writing value
        num=num+1;
    end
end