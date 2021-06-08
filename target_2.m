function y = target_2(x)
% This target distribution is a Student-t distribution 
nu=5;
y=tpdf(x-2,nu);

end

