% This function reads in a list of colour names and their values from a
% specified text file, returning the colour names in a cell array and the 
% colour values in a 2D array
% Input: filename(a string containing the filename of a text file that 
% stores a mapping of colour names to colour values)
% Outputs: colourNames(a cell array of colour names), colourValues(a 2D
% array of colour values of size r x 3)
% Author: Yun-Shan Tsai

function [colourNames, colourValues] = ReadColourValues(filename)
    fid = fopen(filename, 'r');
    if (fid == -1)
        fprintf('Error opening file %s', filename)
    else
        colourNames = {};
        colourValues = [];
        line = fgetl(fid);
        while (ischar(line))
            data = split(line, ' ');
            colourNames = {colourNames, data(1)};
            values = [str2double(data(2)), str2double(data(3)), str2double(data(4))];
            colourValues = [colourValues; values];
            line = fgetl(fid);
        end
        fclose(fid);
    end
end