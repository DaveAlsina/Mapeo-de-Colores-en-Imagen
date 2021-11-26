%% Selección de la imagen para procesar

image1 = imread('imgs/diomedes.jpg');
imageGpuR = gpuArray(image1(:,:,1));
imageGpuG = gpuArray(image1(:,:,2));
imageGpuB = gpuArray(image1(:,:,3));

imshow(image1)


%% Transformación 1

timer2 = tic;
imageTransform2 = image1;

[newImageR, newImageG] = arrayfun(@transformation1, imageGpuB);
newImageR = gather( newImageR ); % Fetch the data back from the GPU
newImageG = gather( newImageG ); % Fetch the data back from the GPU
 
 
imageTransform2(:,:,1) = uint8(newImageR);
imageTransform2(:,:,2) = uint8(newImageG);
figure, imshow(imageTransform2)

endTime2 = toc(timer2);

%% Transformación 2

timer1 = tic;
imageTransform1 = image1;

newImage = arrayfun(@transformation2, imageGpuR, imageGpuG);
newImage = gather( newImage ); % Fetch the data back from the GPU
imageTransform1(:,:,3) = uint8(newImage);
figure, imshow(imageTransform1)

endTime1 = toc(timer1);


figure, plot3(imageTransform1(:,:,1), imageTransform1(:,:,2), imageTransform1(:,:,3), 'x')
figure, plot3(image1(:,:,1), image1(:,:,2), image1(:,:,3), 'x')

%% Transformación 3

timer1 = tic;
imageTransform1 = image1;

[NegativeRedChannel, NegativeGreenChannel, NegativeBlueChannel] = arrayfun(@transformation3, imageGpuR, imageGpuG, imageGpuB);
newImageR = gather( NegativeRedChannel); % Fetch the data back from the GPU
newImageG = gather( NegativeGreenChannel); % Fetch the data back from the GPU
newImageB = gather( NegativeBlueChannel); % Fetch the data back from the GPU

imageTransform1(:,:,1) = uint8(newImageR);
imageTransform1(:,:,2) = uint8(newImageG);
imageTransform1(:,:,3) = uint8(newImageB);

figure, imshow(imageTransform1)

endTime1 = toc(timer1);


figure, plot3(imageTransform1(:,:,1), imageTransform1(:,:,2), imageTransform1(:,:,3), 'x')
figure, plot3(image1(:,:,1), image1(:,:,2), image1(:,:,3), 'x')

%% Transformación 4

timer1 = tic;
imageTransform1 = image1;

[NegativeRedChannel, NegativeGreenChannel, NegativeBlueChannel] = arrayfun(@transformation4, imageGpuR, imageGpuG, imageGpuB);
newImageR = gather( NegativeRedChannel); % Fetch the data back from the GPU
newImageG = gather( NegativeGreenChannel); % Fetch the data back from the GPU
newImageB = gather( NegativeBlueChannel); % Fetch the data back from the GPU

imageTransform1(:,:,1) = uint8(newImageR);
imageTransform1(:,:,2) = uint8(newImageG);
imageTransform1(:,:,3) = uint8(newImageB);

figure, imshow(imageTransform1)

endTime1 = toc(timer1);


figure, plot3(imageTransform1(:,:,1), imageTransform1(:,:,2), imageTransform1(:,:,3), 'x')
figure, plot3(image1(:,:,1), image1(:,:,2), image1(:,:,3), 'x')

%% Transformacion 5

timer2 = tic;
imageTransform2 = image1;

[newImageR, newImageG] = arrayfun(@transformation5, imageGpuB);
newImageR = gather( newImageR ); % Fetch the data back from the GPU
newImageG = gather( newImageG ); % Fetch the data back from the GPU
 
 
imageTransform2(:,:,1) = uint8(newImageR);
imageTransform2(:,:,2) = uint8(newImageG);
figure, imshow(imageTransform2)

endTime2 = toc(timer2);

