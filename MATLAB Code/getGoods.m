function [out, out2] = getGoods(data, howFar)
%getting all cities which are good to live from the close cities list
    thetaOpt = 0.98; %calculated previously by all cities data
    count=1;
    for i=1:size(data)
        if data{i,6} > thetaOpt
            goodCities{count,1} = data{i,1}; %writing city name
            howFarGood{count,1} = howFar{i,1}; %writing distance
            howFarGood{count, 2} = howFar{i,2}; %writing city name
            howFarGood{count, 3} = howFar{i,3}; %writing state
            count=count+1;
        end
    end
out = goodCities; %cell array with the list of good close cities
out2 = howFarGood; %writing this cell to plot
end