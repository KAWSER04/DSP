clc;
clear;
%answer 1
fs=8000;
ts=1/fs;
N=8;
n=0:N-1;
x=5*sin(2*pi*1000*n*ts+pi/2);
subplot(4,2,1)
stem(n,x);


%answer 2
fs=750;
ts=1/fs;
x=5*sin(2*pi*1000*n*ts+(pi/2));
subplot(4,2,2)
stem(n,x);

%answer 3
clc;
clear;
fs=8000;
ts=1/fs;
N=8;
n=0:N-1;
x=5*sin(2*pi*1000*n*ts+(pi/2));
for m=0:length(x)-1
  real=0;
  imaginary=0;
    for i=0:N-1
    real=real+(x(i+1)*cos((2*pi*m*i)/N));
    imaginary=imaginary+(x(i+1)*sin((2*pi*m*i)/N));
    end;
  result(m+1)=real;
  result2(m+1)=imaginary;
  end;

for iter=1:N
     maginitiude(iter)=sqrt((result(iter)*result(iter))+(result2(iter)*result2(iter)));
end;
subplot(4,2,3)
disp(maginitiude);
stem(n,maginitiude);


%answer 4
clc;
clear;
fs=750;
ts=1/fs;
N=8;
n=0:N-1;
x=5*sin(2*pi*1000*n*ts+(pi/2));

for m=0:length(x)-1
  real=0;
  imaginary=0;

    for i=0:N-1
    real=real+(x(i+1)*cos((2*pi*m*i)/N));
    imaginary=imaginary+(x(i+1)*sin((2*pi*m*i)/N));
    end;
  result(m+1)=real;
  result2(m+1)=imaginary;

  end;
for iter=1:N
     maginitiude(iter)=sqrt((result(iter)*result(iter))+(result2(iter)*result2(iter)));
end;
subplot(4,2,4)
disp(maginitiude);
stem(n,maginitiude);

%answer 5
clc;
clear;
fs=2000;
ts=1/fs;
N=8;
n=0:N-1;
x=5*sin(2*pi*1000*n*ts+(pi/2));
x
for m=0:length(x)-1
  real=0;
  imaginary=0;
    for i=0:N-1
    real=real+(x(i+1)*cos((2*pi*m*i)/N));
    imaginary=imaginary+(x(i+1)*sin((2*pi*m*i)/N));
    end;
  result(m+1)=real;
  result2(m+1)=imaginary;
  end;

for iter=1:N
     maginitiude(iter)=sqrt((result(iter)*result(iter))+(result2(iter)*result2(iter)));
end;

for m=0:length(x)-1
  real=0;
  imaginary=0;
    for i=0:N-1
    real=real+(1/N)*(maginitiude(i+1)*cos((2*pi*m*i)/N));
    imaginary=imaginary+(1/N)*(maginitiude(i+1)*sin((2*pi*m*i)/N));
    end;
  result(m+1)=real;
  result2(m+1)=imaginary;
  end;
  
  for iter=1:N
     output(iter)=sqrt((result(iter)*result(iter))+(result2(iter)*result2(iter)));
end;
output
n
subplot(4,3,8);
slot(N,output);







