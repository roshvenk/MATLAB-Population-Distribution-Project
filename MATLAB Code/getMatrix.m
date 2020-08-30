function matrix = getMatrix(cityLocation, cityStates)

[r c] = size(cityLocation);
matrix = cell(r,9);
clear c;


for i = 1:r
    %FIRST COLUMN: city name
    matrix{i, 1} = cityLocation{i,1};
    
    %SECOND COLUMN: state name
    matrix{i, 2} = cityStates{i,1};
    
    
    %THIRD COLUMN: Chronic Disseases (BY STATE)
    chrDisState = getChrDis();
    matrix{i, 3} = chrDisState{cityStates{i,1},2};
   
    %# COLUMN: Gini Coefficient
    
    %# COLUMN: Unemployment Rate
    
    %# COLUMN: Population Density
    
    %# COLUMN: Crime Rate
    
    %# COLUMN: Median Income
    
  

%  WRITING TO A FILE
%fid = fopen('Close_Cities_Info.dat','w');
%for i=1:r
%    fprintf(fid, '%s %s\n', matrix{i,1:9});
%end
%fclose(fid);


end







