function [NegativeRedChannel, NegativeGreenChannel, NegativeBlueChannel] = transformation4(redChannel, greenChannel, blueChannel)

% Escalas de grises -> Negativo

t = (redChannel + greenChannel + blueChannel)*(1/3);

NegativeRedChannel = 255 - t;
NegativeGreenChannel = 255 - t;
NegativeBlueChannel = 255 - t;

end