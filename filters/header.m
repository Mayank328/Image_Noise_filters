function [head]= header(filters)
head='Factor';
for i=["PSNR","SSIM","IEF","MSE","RMSE"]
    head=[head,'Noisy_'+i];
    for f=filters
        head=[head,f+'_'+i];
    end
end
