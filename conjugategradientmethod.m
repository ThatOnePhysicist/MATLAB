% Conjugate Gradient Method 
%
% Used to solve Ax = b
% A is a symmetric PD matrix
% Assumptions: A = [[2,-1,0,0],[-1,3,-1,0],[0,-1,3,-1],[0,0,-1,2]], b = [[-1],[4],[7],[0]], x_0 = zero vector
% Useful for sparse systems
%
% Given A, b, n and initial approximation x, use the conjugate gradient method.
r = b - A*x; 
disp('r:'); 
disp(r');
p = r;
rprod = dot(r,r);

for its = 1:n Ap = A*p;
  alpha = -rprod/dot(p,Ap); x = x - alpha*p; disp('x:');
  disp(x');
  r = r + alpha*Ap;
  disp('r:');
  disp(r');
  % the rest of the loop body should be skipped on the nth iteration oldrprod = rprod;
  rprod = dot(r,r);
  beta = rprod/oldrprod; 
end
