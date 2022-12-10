% This function determines whether or not each point in a grid of complex
% values is a member of the Julia set associated with a specified complex
% value c.
% If a point in the grid is still within the bounded region after the 
% maximum number of iterations has been performed, it is deemed a member
% of the Julia set (and assigned a value of 0). If a point is not a member
% of the Julia set it will be assigned a value that corresponds to the 
% number of complex quadratic iterations it took for that point to exit 
% the bounded circular region.
% Inputs: inputArray(a 2D array that stores the grid of complex values we 
% will determine the nature of), c(a specified complex value), cutoff(a 
% cutoff value that determines the maximum number of iterations to perform
% Output: outputArray(a 2D array describing the nature of each point on the
% grid)
% Author: Yun-Shan Tsai

function [outputArray] = JuliaSetPoints(inputArray, c, cutoff)
    % Create the output array which has the same dimension as the input
    % array.
    outputArray = inputArray;
    % Go through each value in the input array and return the iteration
    % values by using the function IteratecomplexQuadratic and store the
    % result in the output array
    for i =1:numel(inputArray)
       outputArray(i) = IterateComplexQuadratic(inputArray(i), c, cutoff);
    end
end