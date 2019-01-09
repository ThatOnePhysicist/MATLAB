delta_t = input('delta t: ');
n = input('n: ');
delta_x = 1/(n+1);
disp(['delta x is ', num2str(delta_x)]);
mu = delta_t / delta_x^2;
disp (['mu: ',num2str(mu)]);
num_steps = input ('# of time steps: ');
main_diag1 = (1+mu)*ones (n,1);
off_diag1 = -(mu/2)*ones (n,1);
matrix1 = spdiags([off_diag1 main_diag1 off_diag1], -1:1, n, n);
main_diag2 = (1-mu)*ones (n,1);
off_diag2 = (mu/2)*ones (n,1);
matrix2 = spdiags([off_diag2 main_diag2 off_diag2], -1:1, n, n);
x = zeros(n,1);
for i = 1:n
 x(i) = i*delta_x;
end
oldu = sin(pi*x);
% display(oldu);
for m = 1:num_steps
 nextu = matrix1\(matrix2*oldu);
 exact = exp(-pi*pi*m*delta_t) * sin(pi*x);
 disp(norm(nextu-exact,inf));
 oldu = nextu;
end
