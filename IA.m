% 按间接平差法计算平差值
fid = fopen('B.txt');
B = textscan(fid,'%f %f %f %f %f %f %f %f %f %f');
fclose(fid);

fid = fopen('l0.txt');
l = textscan(fid,'%f');
fclose(fid);

B = cell2mat(B);
l = cell2mat(l);
P = eye(size(B,1)); %权阵为单位矩阵

NBB = (B') * P * B
W = (B') * P * l
xp = NBB \ W
V = B * xp - l
%disp('inv NBB = ');
%disp(inv(NBB));