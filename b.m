% 计算误差方程系数
[dxjk, dyjk, sjk, dxjh, dyjh, sjh]=textread('b.txt','%f %f %f %f %f %f');
rou = 206265;
bxj = rou.*( dyjk./(sjk.^2) - dyjh./(sjh.^2) );
byj = -rou.*( dxjk./(sjk.^2) - dxjh./(sjh.^2) );
bxk = -rou.*( dyjk./(sjk.^2) );
byk = rou.*( dxjk./(sjk.^2) );
bxh = rou.*( dyjh./(sjh.^2) );
byh = -rou.*( dxjh./(sjh.^2) );
disp([bxj, byj, bxk, byk, bxh, byh]);