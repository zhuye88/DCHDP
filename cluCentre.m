function [ centre ] = cluCentre( data,Tclass,dc)
%CLUCENTRE Summary of this function goes here
%   Detailed explanation goes here

SimMatrix = pdist2(data,data,'minkowski',2);



%%

NumIns=size(SimMatrix,2);
Density=sum(SimMatrix'<=dc);

C=unique(Tclass);
centre=[];
for i=1:length(C) 
    cdata=data(Tclass==C(i),:);
    cdensiy=Density(Tclass==C(i));
    [~,SortDensity]=sort(cdensiy,'descend');
    centre=[centre; cdata(SortDensity(1),:)];    
end


end

