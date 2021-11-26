function [NegativeRedChannel, NegativeGreenChannel, NegativeBlueChannel] = transformation3(redChannel, greenChannel, blueChannel)

% Negativo -> Escala de grises

NegativeRedChannel = 255 - redChannel;
NegativeGreenChannel = 255 - greenChannel;
NegativeBlueChannel = 255 - blueChannel;

t = (NegativeRedChannel + NegativeGreenChannel + NegativeBlueChannel)*(1/3);
NegativeRedChannel = t;
NegativeGreenChannel = t;
NegativeBlueChannel = t;

end