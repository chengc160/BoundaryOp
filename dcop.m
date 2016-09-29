function out = dcop(m)
[a,b] = size(m);
out = zeros(a*(b-2),b-1);
for i = 1 : a
    for j = 1 : b-2
        tmp = m(i,1:end-2);
        tmp(j) = [];
        tmp2 = m(:,end-1);
        out((b-2)*(i-1)+j,:) = [tmp,(-1)^(j-1)*tmp2(i),i];
    end
end
end