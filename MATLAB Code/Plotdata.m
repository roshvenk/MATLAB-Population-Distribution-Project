[r,c] = size(cityGoods);
ypoints = (1:4);
cityNames = cell(1,4);

%first element: min
ypoint(1) = min(data{:,9}); %lowest theta value
[val,idx] = min([data{:,9}]); 
cityNames{1,1} = data{val,1}; %cityname with lowest theta value

%second element: avg
ypoints(2) = mean(data{:,9});
cityNames{1,2} = "avg";

%third element: input
j=1;
while(city~=cityGoods{j,1})
    j=j+1;
end
ypoints(3) = data{j,9};
cityNames{1,3}= data{j,1};

%fourth element: max
[val,idx] = max([data{:,9}]);
ypoints(4) = max(data{:,9});
cityNames{1,4} = cityGoods{val,1};

x=(1:4);
labels = {cityNames{1},cityNames{2},cityNames{3},cityNames{4}};
plot(x,ypoints)
xlabel("Cities");
ylabel("Theta Values");
text(x,ypoints,labels,'VerticalAlignment','bottom','HorizontalAlignment','right')
    
    