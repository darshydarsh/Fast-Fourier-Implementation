%This program computes the error to the solution to thelinearly dispersive wave equation
N = 1000; %Number of steps
h = 2*pi/N; %step size
x = h*(1:N);
t = sqrt(2)*pi;
u0(1) = .0; % Setting the initial values for the discontinuities
u0(2:N/2 -1) = 0;
u0(N/2) = 0.5;
u0(N/2 +1:N-1) = 1;
u0(N)=0.5;
k=(i*[0:N/2-1 0 -N/2+1:-1]);
k3=k.^3;
u=ifft(exp(k3*t).*fft(u0));
plot(x, qd(t,x)-u);
xlabel('x ','FontSize',14);
ylabel('u(t,x)','FontSize',14);
title('Error at time .5 *\pi','FontSize',14);
