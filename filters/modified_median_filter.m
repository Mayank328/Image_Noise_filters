function [im]=modified_median_filter(im)
dim=size(im);
bmat=binary_matrix(im);
tmat=t_symmetric_pad_matrix(im,1);
btmat=t_symmetric_pad_matrix(bmat,1);
for i=1:dim(1)
    for j=1:dim(2)
        if bmat(i,j)
            bkmat=k_approximate_matrix(btmat,1,i,j,1);
            if ~(all(bkmat,"all"))
                kmat=k_approximate_matrix(tmat,1,i,j,1);
                im(i,j)=median(kmat,"all");
            end
        end
    end
end