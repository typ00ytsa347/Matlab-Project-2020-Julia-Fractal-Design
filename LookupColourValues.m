% This function  looks up the colour values for a named colour, from a list
% of provided colours and their values.
% Inputs: colour(a string containing the name of a colour to look up),
% colourNames(a cell array of colour names), colourValues(a 2D array of
% colour values of size r x 3)
% Output: RGB(an array of colour values for the colour to look up)
% Author: Yun-Shan Tsai

function [RGB] = LookupColourValues(colour, colourNames, colourValues)
    % Search for colour in colourNames, not taking cases into account
    values = strfind(lower(colourNames), lower(colour));
    % If the colour isn't found, display colour not found and set the
    % colour to default 0, 0, 0
    if (isempty(values))
       fprintf('Colour not found')
       RGB = [0, 0, 0];
       % Find the corresponding value in colourValues and assign them to
       % the array RGB
    else
        r = colourValues(values.*3 -2);
        RGB = [r, r + 1, r + 2];
    end
end