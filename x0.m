% 计算C, F, G, H, J的近似坐标值X0
[xa, ya, xb, yb, ad, am, as, bd, bm, bs]=textread('x0.txt','%f %f %f %f %f %f %f %f %f %f');
a = dms2degrees([ad, am, as]);
b = dms2degrees([bd, bm, bs]);
xp = (xa.*cotd(b)+xb.*cotd(a)+ya-yb)./(cotd(a)+cotd(b));
yp = (ya.*cotd(b)+yb.*cotd(a)-xa+xb)./(cotd(a)+cotd(b));
disp([xp yp]);