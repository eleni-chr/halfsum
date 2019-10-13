function tempsum = halfsum(A)

% The function takes as input an at most two-dimensional array A and
% computes the sum of the elements of A that are in the lower right
% triangular part of A, that is, elements in the counter-diagonal (going
% from the bottom left corner, up and to the right) and elements that are
% to the right of it. For example, if the input is [1 2; 3 4; 5 6; 7 8],
% then the function would return 21.

s = size(A);
rows = s(1);
columns = s(2);
x=1;
tempsum=0;
for r=rows:-1:1
    if x<=columns
        tempsum=tempsum+sum(A(r,x:end));
        x=x+1;
    end
end
end