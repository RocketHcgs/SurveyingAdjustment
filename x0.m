% 计算C, F, G, H, J的近似坐标值X0
[xa, ya, xb, yb, a1, a2, a3, b1, b2, b3]=textread('x0.txt','%f %f %f %f %f %f %f %f %f %f');
a = dms2degrees([a1, a2, a3]);
b = dms2degrees([b1, b2, b3]);
xp = (xa.*cotd(b)+xb.*cotd(a)+ya-yb)./(cotd(a)+cotd(b));
yp = (ya.*cotd(b)+yb.*cotd(a)-xa+xb)./(cotd(a)+cotd(b));
disp([xp yp]);