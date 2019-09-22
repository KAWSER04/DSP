n=[-20:20];
dt=n==0;
subplot(4,2,1);
stem(n,dt);
title('unit impulse');

dt=n>=0;
subplot(4,2,2);
stem(n,dt);
title('unit step');

t=0:7;
subplot(4,2,3);
stem(t,t);
title('unit ramp');

x2=0.8.^(n);
subplot(4,2,4);
stem(n,x2);
title('Exponential sequence');