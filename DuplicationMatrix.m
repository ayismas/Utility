function res=DuplicationMatrix(m)
%% 该函数用来计算m*m的方阵的elimination 矩阵，记为Dm
% Lm使得：vec(A)=Dm*vec(A)
% m的取值不能过大
if ~isscalar(m)||m<1
    error('m必须为正整数!');
end
K=m*m;
res=eye(K);


for i=m:-1:2
    res(:,(i*m-m+1):(i*m-m+i-1))=[];  
    for j=1:m-i+1
       res(K-j*m+i-1,i*m-m-j+1)=1; 
    end
end



end
