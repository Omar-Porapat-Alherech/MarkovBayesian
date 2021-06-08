function y = target_3(x)
% This target distribution is a Cauchy distribution
x_0=3; gamma=0.1;
denom=pi.*gamma.*(1+((x-x_0)./(gamma)).^2)+1/2;
y=denom.^(-1);

end

