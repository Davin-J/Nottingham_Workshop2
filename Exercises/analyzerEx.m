function [ratio_odd,backward_elements]=analyzerEx()

% Generate a 100-by-100 matrix where A(i,j) = i + j;
% A=ones(100,100);
% for ii = 1:100
%     for jj = 1:100
%         A(ii,jj) = ii + jj;
%     end
% end
A=repmat((2:101),100,1)+repmat((0:99)',1,100);  

% Calculate the percentage of elements that are odd
num_pos = sum(rem(A(:), 2) == 1);
num_elements = numel(A);
ratio_odd = num_pos/num_elements;

% Create an array of elements in backwards order
backward_elements = sort(A(:),'descend');

