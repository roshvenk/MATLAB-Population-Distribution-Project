function out = getgoods(in)
goodcities={};
theta=gettheta;
count=1;
for i=1:size(in)
    if in{i,2}>theta
        goodcities{count}=in{i,1}
        count=count+1;
    end
end
out=goodcities;
    
        
