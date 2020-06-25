%计算误差方程常数项
[Ld, Lm, Ls, ad, am, as, bd, bm, bs]=textread('l.txt','%f %f %f %f %f %f %f %f %f');
Li = dms2degrees([Ld, Lm, Ls]);
ai = dms2degrees([ad, am, as]);
bi = dms2degrees([bd, bm, bs]);
li = -degrees2dms(Li - (ai - bi));
for i = 1:numel(li(:,3))
    disp([i,li(i,3)]);
end