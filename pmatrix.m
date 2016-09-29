function [c,pm] = pmatrix(m)
% input a complex matrix
% output c: low level complex
%        pm: boundary matrix as sparse matrix
[sorted_simplex,ind] = sortindex(m);
init = [sorted_simplex,ind,zeros(size(ind))];
newm = dcop(init);
% j = newm(:,end);
[B,I,i] = mysort(newm(:,1:end-2));
tmp = newm(:,end-1:end);
tmp = tmp(I,:);
j = tmp(:,2);
pm = sparse(i,j,tmp(:,1));
A = B;
A([1 ; sum(abs(diff(A)),2)]==0,:) = [];
c = A;
