function [im] = img_filter(filter_type,im)
if length(size(im))==2
    switch filter_type
        case 'BmeanF'
            im=basic_mean_filter(im);
        case 'BMF'
            im=basic_median_filter(im);
        case 'AMF'
            im=adaptive_median_filter(im,9);
        case 'ARmF'
            im=adaptive_riesz_mean_filter(im);
        case 'DAMRmF'
            im=different_adaptive_modified_riesz_mean_filter(im);
        case 'MDBUTMF'
            im=modified_decision_based_unsymmetric_trimmed_median_filter(im);
        case 'ATmF'
            im=alpha_trimmed_mean_filter(im);
        case 'GmF'
            im=geometric_mean_filter(im);
        case 'EXF'
            im=exfilter(im);
        case 'MaxF'
            im=max_filter(im);
        case 'MinF'
            im=min_filter(im);
        case 'MMF'
            im=modified_median_filter(im);
        otherwise
            disp('Invalid filter name')
    end
elseif length(size(im))==3
    for i=1:3
        switch filter_type
            case 'BmeanF'
                im(:,:,i)=basic_mean_filter(im(:,:,i));
            case 'BMF'
                im(:,:,i)=basic_median_filter(im(:,:,i));
            case 'AMF'
                im(:,:,i)=adaptive_median_filter(im(:,:,i),9);
            case 'ARmF'
                im(:,:,i)=adaptive_riesz_mean_filter(im(:,:,i));
            case 'DAMRmF'
                im(:,:,i)=different_adaptive_modified_riesz_mean_filter(im(:,:,i));
            case 'MDBUTMF'
                im(:,:,i)=modified_decision_based_unsymmetric_trimmed_median_filter(im(:,:,i));
            case 'ATmF'
                im(:,:,i)=alpha_trimmed_mean_filter(im(:,:,i));
            case 'GmF'
                im(:,:,i)=geometric_mean_filter(im(:,:,i));
            case 'EXF'
                im(:,:,i)=exfilter(im(:,:,i));
            case 'MaxF'
                im(:,:,i)=max_filter(im(:,:,i));
            case 'MinF'
                im(:,:,i)=min_filter(im(:,:,i));
            case 'MMF'
                im(:,:,i)=modified_median_filter(im(:,:,i));
            otherwise
                disp('Invalid filter name')
        end
    end
end