function [cityLocation, cityState, howFar] = getLocation(city,distance)
%getting list of close cities

%%Creating cell array of the location of the cities from the data file
[x, locationData] = xlsread("locations.xlsx");
clear x;
distance = str2double(distance);
[r, c] = size(locationData);
location = cell(r, c); % cell array of the location of the cities

for i=1:r
    for j=1:c
        if (isempty(locationData{i,j}) ~=1)
            if isletter(locationData{i,j}(1)) 
                if upper(locationData{i,j})== locationData{i,j} 
                    location{i,j} = lower(locationData{i,j}); %assinging the name of the states
                else 
                    dontWant = [" AP"," (S)"," AFB"," CO"," MAP"," CIC"," Co"]; 
                    new = erase(string(locationData{i,j}),dontWant);
                    location{i,j} = char(deblank(new)); %assinging the name of the cities
                    clear new dontWant;
                end
            else %assinging the value of the locations
                dontWant = ["°","N","'","W"]; 
                new = erase(string(locationData{i,j}),dontWant);
                location{i,j} = str2double(new);
                clear new dontWant;
            end
        else
            location{i,j} = locationData{i,j}; %assinging empty values
        end
    end  
end








%%Calculating the list of close cities
count = 0;
for i=1:r
    if strcmp(location{i,1}, city) %getting the coordinates of the city input
        xCity = location{i,2} + location{i,3}/60; %transforming minutes in degrees
        yCity = location{i,4} + location{i,5}/60;
    else
        count = count + 1;
    end
end
if count == r %if this happens, it means the city input is not in the data file
    cityLocation = 0;
    cityState = 0; 
    howFar =  0; 
    
else

rowList = 1;

for i=1:r
    if (strcmp(string(location{i,2}),"latitude")~=1) %getting the coordinates from the cities
        x = location{i,2} + location{i,3}/60;
        y = location{i,4} + location{i,5}/60;
        d = sqrt( (xCity-x)^2 + (yCity-y)^2 );
        if d <= distance/111 % 1 degrees = 111 * kilometers
            cityLocation{rowList, 1} = strtok(location{i,1},','); %assining the city name to the list of close cities
            cityState{rowList, 1} = stateName;  %assigning the state name
            howFar{rowList,3} = cityLocation{rowList, 1}; %assigning the city name
            howFar{rowList,2} = stateName; %assigning the state name
            howFar{rowList,1} = d*111; %assigning the distance from the actual city to the city input
            rowList = rowList+1;
        end 
    else
        stateName = location{i,1}; %assigning the state name -indicates which state the city is in the loop
    end
end

end
end









