function res=DuplicationMatrix(m)
%%  elimination matrix, Dm=res
% vec(A)=Dm*vec(A)
if ~isscalar(m)||m<1
    error('m must be an integer!');
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
