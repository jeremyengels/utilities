function LatexArray(A,numType,numDigits)
% LatexArray(A,numType,numDigits) displays matrix A in a format convenient
% for copying and pasting into a LaTeX tabular environment. 
% 
% numType is an optional input which specifies the value type, and is
% consistent with the documentation in function fprintf. numType = 'i' or
% 'd' indicates integer values, and numType = 'f' indicates floating-point
% values. By default 'f' is used.
% 
% numDigits is an optional input which specifies the desired precision. By
% default 4 digits is used.

switch nargin
    case 1
        numDigits = 0;
        numType = 'f';
    case 2
        if strcmp(numType,'d')
            numDigits = 0;
        else
            numDigits = 4;
        end
end

[m,n] = size(A);
doubleslash = '\\';
str = ['%.',num2str(numDigits),numType];

fprintf('\n');
for i = 1:m
    for j = 1:n-1
        fprintf([str,' & '],A(i,j));
    end
    fprintf([str,' %s \n'],A(i,n),doubleslash);
end
fprintf('\n');
