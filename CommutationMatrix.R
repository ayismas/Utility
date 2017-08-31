CommutationMatrix<-function(m=2,n=m){
  # https://en.wikipedia.org/wiki/Commutation_matrix
  res=matrix(0,m*n,n*n);
  for(i in 1:n){
    for(j in 1:m){
      res[n*j-n+i,m*i-m+j]=1;
      }
  }
  return(res);
}
