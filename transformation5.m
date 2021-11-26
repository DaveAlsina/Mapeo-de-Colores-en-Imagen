function [redChannel, greenChannel] = transformation5(blueChannel)

    blueChannel = double(blueChannel)./255;
    a = 0.2;
    b = 0.8;
    c = 20.0;
    
    redChannel = (a*sin(c*blueChannel)+b).*cos(blueChannel)./3;
    greenChannel = (a*sin(c*blueChannel)+b).*sin(blueChannel)./3;


    redChannel = redChannel.*255; 
    greenChannel = greenChannel.*255;
end