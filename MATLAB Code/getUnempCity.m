function out = getUnempCity()
%getting the cell array with the unemployment rate data by city
    [num_u,txt_u,raw_u]=xlsread('unempCity.xlsx');
    [r c] = size(txt_u);
    unempCity = cell(r, 2); %cell array with the unemployment data
    for i = 1:r
        new = strtok(txt_u{i,1},',');
        new = strtok(new,'-');
        unempCity{i,1} = new; %writing city name
        unempCity{i,2} = num_u(i,1); %writing value
    end
    out=unempCity;  
end
