%This program computes the solution to the linearly dispersive
wave equation using the fast fourier transform.

N = 1000; %Number of grid points.
h = 2*pi/N; %Defining the size of each grid.
x = h*(1:N); %Defining the variable x as an array.
t = .05*pi; %Defining the variable t as a rational multiple of \pi.
dt = .001; % Defining an appropriate time step.
u0 = zeros(1,N); %Defining the initial data
u0(N/2+1:N)= ones(1,N/2); % Defining the initial data
k=(1i*[0:N/2-1 0 -N/2+1:-1]);
k3=k.^3;
u=ifft(exp(k3*t).*fft(u0));%Solution to the Linearly dispersive wave equation.
plot(u)%Command to plot the solution
