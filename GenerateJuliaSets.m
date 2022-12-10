% This function  takes a sequence of complex values and generates the
% corresponding sequence of Julia set images.
% Inputs: cvalues(a 1D array of complex values to generate Julia set
% fractals for), n(a value specifying the grid size to use), colourMap(a 2D
% array of size 𝑟𝑟 × 3 containing a colour map)
% Output: images(a cell array where each element contains an RGB image of a
% Julia set)
% Author: Yun-Shan Tsai

function [images] = GenerateJuliaSets(cvalues, n, colourMap)
    % Create a cell array for the output images
    images = cell(1, length(cvalues));
    % Use the createComplexGrid function to generate an n x n grid
    complexGrid = CreateComplexGrid(n);
    rows = size(colourMap, 1);
    % Go through the elements in the cvalues array to create images
    for i = 1:length(cvalues)
        % Create the grid for number of iterations using the function
        % JuliaSetPoints
        outputArray = JuliaSetPoints(complexGrid,cvalues(i), rows);
        % Create the image using ColourJulia and store it in the cell array
        images{i} = ColourJulia(outputArray, colourMap);
    end
end