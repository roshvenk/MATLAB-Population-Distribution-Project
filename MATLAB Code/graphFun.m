function [ypoint, labels] = graphFun(howFarGood)
%getting the closest and farthest cities
    ypoint = (1:3); %vector with the closest and farthest cities distances
    cityNames = cell(1,3); %cell with the closest and farthest cities names

    vec = [];
    for i=1:length(howFarGood)
        vec(i) = howFarGood{i,1}; %creating a vector with all distances
    end
    
    
    ypoint(1) = 0; %first point is a 0 -> simulates the relative distance 
    %between the city input and the other cities
    
    %FIRST ELEMENT: Min
    ypoint(2) = min(vec); %lowest distance
    [val,idx] = min([howFarGood{:,1}]); 
    cityNames{1,1} = howFarGood{idx,3}; %cityname with lowest distance 
    clear val idx;

    %SEOCND ELEMENT: Avg
    ypoint(3) = mean(vec); %average distance
    cityNames{1,2} = 'Avg';

    %THIRD ELEMENT: Max
    ypoint(4) = max(vec); %greater distance
    [val,idx] = max([howFarGood{:,1}]); 
    cityNames{1,3} = howFarGood{idx,3}; %cityname with greater distance 
    clear val idx;

    labels = {'',cityNames{1},cityNames{2},cityNames{3}}; %to the plot
end
    




