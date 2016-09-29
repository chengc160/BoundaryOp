m = [0 1 3 ; 1 2 3; 2 4 3];
% 2-boundary matrix
[c2,pm2] = pmatrix(m);
% 1-boundary matrix
[c1,pm1] = pmatrix(c2);
% 0-boundary matrix
[c0,pm0] = pmatrix(c1);
% to see the full matrix use command full(pm1)
full(pm2)