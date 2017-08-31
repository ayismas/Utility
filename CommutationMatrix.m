function res=CommutationMatrix(M,N)
%% This function is used for calculating the Commutation Matrix K_{m,n}
% please refer url 'https://en.wikipedia.org/wiki/Commutation_matrix'
%% 该函数用来计算commutation 矩阵

% Wednesday, 31 August, 2017
%
% Pingjun Deng

if nargin==1
    N=M;
elseif nargin~=2
    error('The number of input augments must be equal to 1 or 2!');
end
res=zeros(M*N,M*N);
for i=1:N
   for j=1:M
      res(N*(j-1)+i,M*(i-1)+j)=1; 
   end
end

end
