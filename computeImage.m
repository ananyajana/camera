function [grid] = computeImage(im, grid, H)
[x, y, z] = size(im)
[gx, gy, gz] = size(grid)
p_temp = []
temp = []
imshow(im)

for i=1:x
    for j=1:y
        p_temp = [i, j, 1]'
        temp = H*p_temp;
            if im(i, j, 1) ~= 0 ||im(i, j, 2) ~= 0 ||im(i, j, 3) ~= 0
            if (floor(temp(1)) < gx ) && (floor(temp(2)) < gy)
              
                %grid(floor(temp(1)), floor(temp(2)), d) = im(x, y, d);
                %grid(:, :, d)(floor(temp(1)), floor(temp(2))) = im(:, :, d)(x, y)
                grid(floor(temp(1)), floor(temp(2)), 1) = im(i, j, 1);
                grid(floor(temp(1)),floor(temp(2)), 2) = im(i, j, 2);
                grid(floor(temp(1)),floor(temp(2)), 3) = im(i, j, 3); 

            end
            end
    end
end
