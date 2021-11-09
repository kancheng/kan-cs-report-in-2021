% dimensionality-reduction-with-svd

%Codes in MATLAB
clear all;
% data matrix 5-by-3
X=[10 20 10;2 5 2;8 17 7;9 20 10; 12 22 11];
%SVD decomposition
[U L V]=svd (X,0) 
% row in V are our basis vectors
% U: 5-by-5 orthogonal matrix
% L:5-by-3 diagonal matrix
% V: 3-by-3 orthogonal matrix including basis vectors
% perfect representation for all data (lossless) 
X_C=U*L*V'

% for perfect reconstruction of x1 =[10 20 10] (1-by- 3 vector)
% define a scaled basis matrix 
W=L*V'
X1=U (1,:) *W
% for x1 is approximated by 1st basis vector (loss)
W1=zeros (3,3) ;%3-by-3 matrix
W1 (1,:) =W (1,:) ;% construct the matrix W1 by 1st basis vector
X11=U (1,:) *W1
% for approximation of x1 by 1st and 2nd basis vectors
W1 (1:2,:) =W (1:2,:) 
X12=U (1,:) *W1