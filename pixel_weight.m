% function [pw] = pixel_weight(s,t,k)
% pw=1/( (1+(k+1-s)^2+(k+1-t)^2)^2 );

% function [s] = pixel_weight(k)
% n=2*k+1;
% v=1:(n);
% t=ones(n,1)*v;
% s=transpose(t);
% s=ones(n)+((k+1).*ones(n)-s).^2+((k+1).*ones(n)-t).^2;
% s=1./(s.*s);

function [pw] = pixel_weight(k)
switch k
    case 1
        pw=[0.111111111111111	0.250000000000000	0.111111111111111;
            0.250000000000000	1	0.250000000000000;
            0.111111111111111	0.250000000000000	0.111111111111111];
    case 2
        pw=[0.0123456790123457	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0123456790123457;
            0.0277777777777778	0.111111111111111	0.250000000000000	0.111111111111111	0.0277777777777778;
            0.0400000000000000	0.250000000000000	1	0.250000000000000	0.0400000000000000;
            0.0277777777777778	0.111111111111111	0.250000000000000	0.111111111111111	0.0277777777777778;
            0.0123456790123457	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0123456790123457];
    case 3
        pw=[0.00277008310249308	0.00510204081632653	0.00826446280991736	0.0100000000000000	0.00826446280991736	0.00510204081632653	0.00277008310249308;
            0.00510204081632653	0.0123456790123457	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0123456790123457	0.00510204081632653;
            0.00826446280991736	0.0277777777777778	0.111111111111111	0.250000000000000	0.111111111111111	0.0277777777777778	0.00826446280991736;
            0.0100000000000000	0.0400000000000000	0.250000000000000	1	0.250000000000000	0.0400000000000000	0.0100000000000000;
            0.00826446280991736	0.0277777777777778	0.111111111111111	0.250000000000000	0.111111111111111	0.0277777777777778	0.00826446280991736;
            0.00510204081632653	0.0123456790123457	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0123456790123457	0.00510204081632653;
            0.00277008310249308	0.00510204081632653	0.00826446280991736	0.0100000000000000	0.00826446280991736	0.00510204081632653	0.00277008310249308];
    case 4
        pw=[0.000918273645546373	0.00147928994082840	0.00226757369614512	0.00308641975308642	0.00346020761245675	0.00308641975308642	0.00226757369614512	0.00147928994082840	0.000918273645546373;
            0.00147928994082840	0.00277008310249308	0.00510204081632653	0.00826446280991736	0.0100000000000000	0.00826446280991736	0.00510204081632653	0.00277008310249308	0.00147928994082840;
            0.00226757369614512	0.00510204081632653	0.0123456790123457	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0123456790123457	0.00510204081632653	0.00226757369614512;
            0.00308641975308642	0.00826446280991736	0.0277777777777778	0.111111111111111	0.250000000000000	0.111111111111111	0.0277777777777778	0.00826446280991736	0.00308641975308642;
            0.00346020761245675	0.0100000000000000	0.0400000000000000	0.250000000000000	1	0.250000000000000	0.0400000000000000	0.0100000000000000	0.00346020761245675;
            0.00308641975308642	0.00826446280991736	0.0277777777777778	0.111111111111111	0.250000000000000	0.111111111111111	0.0277777777777778	0.00826446280991736	0.00308641975308642;
            0.00226757369614512	0.00510204081632653	0.0123456790123457	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0123456790123457	0.00510204081632653	0.00226757369614512;
            0.00147928994082840	0.00277008310249308	0.00510204081632653	0.00826446280991736	0.0100000000000000	0.00826446280991736	0.00510204081632653	0.00277008310249308	0.00147928994082840;
            0.000918273645546373	0.00147928994082840	0.00226757369614512	0.00308641975308642	0.00346020761245675	0.00308641975308642	0.00226757369614512	0.00147928994082840	0.000918273645546373];
    case 5
        pw=[0.000384467512495194	0.000566893424036281	0.000816326530612245	0.00111111111111111	0.00137174211248285	0.00147928994082840	0.00137174211248285	0.00111111111111111	0.000816326530612245	0.000566893424036281	0.000384467512495194;
            0.000566893424036281	0.000918273645546373	0.00147928994082840	0.00226757369614512	0.00308641975308642	0.00346020761245675	0.00308641975308642	0.00226757369614512	0.00147928994082840	0.000918273645546373	0.000566893424036281;
            0.000816326530612245	0.00147928994082840	0.00277008310249308	0.00510204081632653	0.00826446280991736	0.0100000000000000	0.00826446280991736	0.00510204081632653	0.00277008310249308	0.00147928994082840	0.000816326530612245;
            0.00111111111111111	0.00226757369614512	0.00510204081632653	0.0123456790123457	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0123456790123457	0.00510204081632653	0.00226757369614512	0.00111111111111111;
            0.00137174211248285	0.00308641975308642	0.00826446280991736	0.0277777777777778	0.111111111111111	0.250000000000000	0.111111111111111	0.0277777777777778	0.00826446280991736	0.00308641975308642	0.00137174211248285;
            0.00147928994082840	0.00346020761245675	0.0100000000000000	0.0400000000000000	0.250000000000000	1	0.250000000000000	0.0400000000000000	0.0100000000000000	0.00346020761245675	0.00147928994082840;
            0.00137174211248285	0.00308641975308642	0.00826446280991736	0.0277777777777778	0.111111111111111	0.250000000000000	0.111111111111111	0.0277777777777778	0.00826446280991736	0.00308641975308642	0.00137174211248285;
            0.00111111111111111	0.00226757369614512	0.00510204081632653	0.0123456790123457	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0123456790123457	0.00510204081632653	0.00226757369614512	0.00111111111111111;
            0.000816326530612245	0.00147928994082840	0.00277008310249308	0.00510204081632653	0.00826446280991736	0.0100000000000000	0.00826446280991736	0.00510204081632653	0.00277008310249308	0.00147928994082840	0.000816326530612245;
            0.000566893424036281	0.000918273645546373	0.00147928994082840	0.00226757369614512	0.00308641975308642	0.00346020761245675	0.00308641975308642	0.00226757369614512	0.00147928994082840	0.000918273645546373	0.000566893424036281;
            0.000384467512495194	0.000566893424036281	0.000816326530612245	0.00111111111111111	0.00137174211248285	0.00147928994082840	0.00137174211248285	0.00111111111111111	0.000816326530612245	0.000566893424036281	0.000384467512495194];
    otherwise
        disp('pixel weight limit exceeded')
end
