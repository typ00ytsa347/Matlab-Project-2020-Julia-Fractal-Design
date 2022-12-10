% This function colours the points in a Julia set black and the points 
% outside of the set an appropriate shade of colour selected from a 
% provided colour map.
% All points within the Julia set are coloured black. If a grid point is not in the Julia set it
% will be coloured using the row from the colour map that corresponds to the value
% used to describe the nature of that point.
% Inputs: grid(a 2D array describing the nature of each point on a grid), 
% colourMap(a 2D array of size r x 3 containing a colour map).
% Output: an RGB image of the Julia set
% Author: Yun-Shan Tsai

function [image] = ColourJulia(grid, colourMap)
    [h, w] = size(grid);
    % Changing the range of the colour map from 0-1 to 0-255
    colourMap = colourMap.*255;
    % Create the 3D array for image and set the values to uint8
    image = ones(h, w, 3, 'uint8');
    % Go through the array grid row by row and column by column
    for i = 1:h
        for j = 1:w
            % Colour it black if the value of iteration is 0, and colour
            % the rest according to RGB values provided by the colour map
            if grid(i, j) == 0
                image(i, j, 1) = 0;
                image(i, j, 2) = 0;
                image(i, j, 3) = 0;
            else
                image(i, j, 1) = colourMap(grid(i, j), 1);
                image(i, j, 2) = colourMap(grid(i, j), 2);
                image(i, j, 3) = colourMap(grid(i, j), 3);
            end
        end
    end
end