function [x3] = transformation2(redChannel, greenChannel)
    
    redChannel = double(redChannel)./255;
    greenChannel = double(greenChannel)./255;
    
    x3 = (sin(redChannel) + cos(greenChannel.*10).^2)./2;
    x3 = x3.*256;

end

