function giniState = getGiniState()
%getting the cell array with the gini coefficient data by state
    [num_gc,txt_gc]=xlsread("giniCoefStates.xlsx");
    [r c] = size(txt_gc);
    giniState = cell(r,2); %cell array with the gini coefficient data
    for i=1:51
        giniState{i,1}= lower(txt_gc{i}); %writing state name
        giniState{i,2}=num_gc(i); %writing value
    end
end