% 计算近似方位角
[xa, ya, xb, yb]=textread('a.txt','%f %f %f %f');
a0 = atan((yb-ya)./(xb-xa));
a0 = rad2deg(a0);
for i = 1:numel(a0)
    if(a0(i)<0)
        a0(i)=-a0(i);
    end
    if((yb(i)-ya(i))>0 && (xb(i)-xa(i))>0)
        disp(degrees2dms(a0(i)));
    elseif((yb(i)-ya(i))>0 && (xb(i)-xa(i))<0)
        disp(degrees2dms(180-a0(i)));
    elseif((yb(i)-ya(i))<0 && (xb(i)-xa(i))<0)
        disp(degrees2dms(180+a0(i)));
    elseif((yb(i)-ya(i))<0 && (xb(i)-xa(i))>0)
        disp(degrees2dms(360-a0(i)));
    end
end