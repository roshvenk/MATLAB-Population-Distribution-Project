function data = getData(cityLocation, cityStates)
%getting cell array with the data from the close cities, writing it to a file

[r c] = size(cityLocation);
data = cell(r,6); %cell array with the data


chrDisState = getChrDis(); %getting the cell array with the chronic disease data by state
giniCity = getGiniCity(); %getting the cell array with the gini coefficient data by city
giniState = getGiniState(); %getting the cell array with the gini coefficient data by state
unempCity = getUnempCity(); %getting the cell array with the unemployment rate data by city
unempState = getUnempState(); %getting the cell array with the unemployment rate data by state

for i = 1:r
    
    %FIRST COLUMN: city name
    data{i, 1} = cityLocation{i,1};
    
    
    %SECOND COLUMN: state name
    data{i, 2} = cityStates{i,1};
    
    
    %THIRD COLUMN: Chronic Disseases
    for j = 1:length(chrDisState)
        if strcmp(cityStates{i,1},chrDisState{j,1})
            data{i, 3} = chrDisState{j,2};
        end
    end
    
    
    %FOURTH COLUMN: Gini Coefficient
    count = 0;
    for j = 1:length(giniCity) %check by city
        if (strcmp(cityLocation{i,1},giniCity{j,2}) && strcmp(cityStates{i,1},giniCity{j,1}))
           data{i, 4} = giniCity{j,3};
           count = 1;
        end
    end 
    clear j;
    if count == 0 %if city not in the data, check by state
        for j = 1:length(giniState)
            if strcmp(cityStates{i,1},giniState{j,1})
                data{i, 4} = giniState{j,2};
            end
        end
    end
    clear count j;
    
    
    %FIFTH COLUMN: Unemployment Rate
    count = 0;
    for j = 1:length(unempCity) %check by city
        if (strcmp(cityLocation{i,1},unempCity{j,2}) && strcmp(cityStates{i,1},unempCity{j,1}))
           data{i, 4} = unempCity{j,3};
           count = 1;
        end
    end 
    clear j;
    if count == 0 %if city not in the data, check by state
        for j = 1:length(unempState)
            if strcmp(cityStates{i,1},unempState{j,1})
                data{i, 5} = unempState{j,2};
            end
        end
    end
    clear count j;

   
    
    %SIXTH: Theta Value
    data{i,6} = (data{i,3}.*3 + data{i,4}.*2 + data{i,5}*9)/150; 
    %theta formula:
    %theta = (3*chronic disease + 2*gini coefficient + 9*unemployment)/150
    
    
end

%Writing the data of the close cities into a file
fid = fopen('Close_Cities_Info.dat','w');
for i=1:r
    fprintf(fid, '%s %s %d %d %d %d\n', data{i,1:6});
end
fclose(fid);


end







