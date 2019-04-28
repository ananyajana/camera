function [grid] = computeImage(im, grid)
[x, y, z] = size(im)
[gx, gy, gz] = size(grid)
p_temp = []
temp = []
imshow(im)

for i=1:x
    for j=1:y

              
                %grid(floor(temp(1)), floor(temp(2)), d) = im(x, y, d);
                %grid(:, :, d)(floor(temp(1)), floor(temp(2))) = im(:, :, d)(x, y)
                %grid(-floor(temp(1))-30, -floor(temp(2))+50, 1) = im(i, j, 1);
                %grid(-floor(temp(1))-30,-floor(temp(2))+50, 2) = im(i, j, 2);
                %grid(-floor(temp(1))-30,-floor(temp(2))+50, 3) = im(i, j, 3); 
                grid(80+i, 80+j, 1) = im(i, j, 1);
                grid(80+i, 80+j, 2) = im(i, j, 2);
                grid(80+i, 80+j, 3) = im(i, j, 3);

    end
end
