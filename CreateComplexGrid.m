% This function creates a 2D array of size n x n which stores complex
% values drawn from a square grid of equally spaced points bounded by the
% lines x = -2, x = 2 and y = 2i, y = -2i
% Input: n, a positive integer specifying the number of rows and columns
% for the output array
% Output: array, an n x n 2D array of equally spaced complex values
% Author: Yun-Shan Tsai

function [array] = CreateComplexGrid(n)
    % Creating an empty array of size n x n
    array = zeros(n);
    % Calculate the values for the real parts by using linspace and store
    % them in the array t
    t = linspace(-2, 2, n);
    % Calculating the values for the imaginery parts and store them in the
    % array s
    s = linspace(2, -2, n);
    % Going row by row
    for i = 1:n
        % Going column by column
        for j = 1:n
            % Calculate c, the position of the value in the output array
            c = n*(i - 1) + j;
            % Plug in the value of the real part from the array t
            a = t(i);
            % Plug in the value of the imaginery part from the array s
            b = s(j);
            % Plug in the 2 values into the array as a complex number
            array(c) = complex(a, b);  
        end
    end
end