function [redChannel, greenChannel] = transformation1(blueChannel)

blueChannel = double(blueChannel)./255;
r = 1;

redChannel = (r.*cos(blueChannel.*500)+1)./2;
greenChannel = (r.*sin(blueChannel.*500)+1)./2;

redChannel = redChannel.*255; 
greenChannel = greenChannel.*255;

end

