function out = getUnempState()
%getting the cell array with the unemployment rate data by state
    [num_u,txt_u] = xlsread("unempState.xlsx");
    [r c] = size(txt_u);
    unempState = cell(r,2); %cell array with the unemployment data
    for i=1:r
        unempState{i,1} = lower(txt_u{i}); %writing state name
        unempState{i,2} = num_u(i); %writing value
    end
    out = unempState;
end

