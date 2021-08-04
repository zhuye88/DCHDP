function [ ndata ] = normalize( data )
% Min-Max normalisation 

ndata = (data - min(data)).*((max(data) - min(data)).^-1); % Min-Max normalisation
ndata(isnan(ndata)) = 0.5;

end
