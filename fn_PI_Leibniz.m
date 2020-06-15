%Saffron

function x = fn_PI_Leibniz(k)
%have the user enter a number k
%the function will run a summation of 0 to k
x = 0;
for b = 0:k
    x = x + 4*((-1)^b)/(2*b+1);
end
end
