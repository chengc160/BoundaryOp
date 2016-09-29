function [sorted_simplex,ind] = sortindex(m)
        sorted_simplex = sort(m,2);
        a = size(m,1);
        ind = ones(a,1);
        for i = 1 : a
            ind(i) = tprod(m(i,:))/tprod(sorted_simplex(i,:));
        end
    
    
    function p = tprod(v)
        l = length(v);
        p = 1;
        for ii = 1:l-1
            for j = ii+1:l
                p=p*(v(ii)-v(j));
            end
        end
    end
    end