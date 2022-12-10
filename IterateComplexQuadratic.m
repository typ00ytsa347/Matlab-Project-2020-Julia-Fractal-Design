% This function repeatedly applies the complex quadratic f(z) = z^2 + c
% for a specified value of z and c. This continues until the value of f 
% is no longer within the bounded region.
% Inputs: z(the initial complex value that we begin the iteration process
% with), c(a specified complex value), cutoff(a cutoff value that
% determines the maximum number of iterations to perform)
% Output: iterations(the number of iterations it took until abs(f) >= 3 or
% 0 if the maximum number of iterations was reached)
% Author: Yun-Shan Tsai

function [iterations] = IterateComplexQuadratic(z, c, cutoff)
    % Begin the iteration process using the quadratic
    f = z.^2 + c;
    iterations = 1;
    % Determine if the absolute value of f is within the bounded region
    while (abs(f) < 3)
        % Continue the iteration process
        f = f.^2 + c;
        iterations = iterations + 1;
        % Set the number of iterations to 0 if the maximum value is reached
        % before the absolute value of f gets out of the region then exit
        % the while loop
        if (iterations > cutoff)
            iterations = 0;
            f = 3;
        end
    end
end