% This function  creates a custom colour map, with n shades of colour that
% range from a specified starting colour through to a specified ending colour.
% Inputs: startingColourValues(an array of colour values for the starting
% colour of the map), endingColourValues(an array of colour values for the
% ending colour of the map), n(the number of rows to generate for the colour
% map array)
% Output: colourmap(a colour map in the form of an n x 3 element array)
% Author: Yun-Shan Tsai

function [colourmap] = CreateColourmap(startingColourValues, endingColourValues, n)
    % Preallocating the output array colourmap
    colourmap = zeros(n, 3);
    % Going from column to column(red, green to blue)
    for i = 1:3
        % Create an evenly spaced array of n elements from the starting
        % colour value to the ending colour value
        col = linspace(startingColourValues(i), endingColourValues(i), n);
        % Plug in the values from the array col into colourmap
        for j = 1:n
           colourmap(j, i) = col(j); 
        end
    end
end