function[res]= Window(mat,i,j,ws)
res=zeros(ws*ws);
k=1;
rlim=(ws-1)/2;
for a=i-rlim:i+rlim
    for b=j-rlim:j+rlim
        res(k)=mat(a,b);
        k=k+1;
    end
end
