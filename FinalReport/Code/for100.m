tic
s1 =[];
for i = 1:100
    s0 = [pFs(1,12,1000)+rand(1)/1000];
    s1 = [s1,s0];
end
toc