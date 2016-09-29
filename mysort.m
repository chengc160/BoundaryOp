function [B,I,out] = mysort(A)
[B,I] = sortrows(A);
diffB = sum(abs(diff(B)),2);
k = 1;
l = length(I);
I2 = 1:l;
for i=2:l
    if diffB(i-1) == 0
        I2(i) = i-k;
        k = k+1;
    else
        I2(i) = i-k+1;
    end
end
out = I2;
end
