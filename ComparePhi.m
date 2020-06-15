%Using a previously writen Function fn_GoldenRatio, calculate the number phi

%Saffron
clear

a=[rand];
b=[rand];
%^create vectors for a and b
phi=0;
% ^ preallocate phi
N=5;
counter=1;
err = 1; %error
tol = 0.0005; %error tolerance
asd = fn_GoldenRatio(a(1),N); %calculate the golden ratio with the function
while abs(err) > tol %while the error is greater than the tolerance, 
    %then run through this
    %otherwise, if the error is less than the tolerance, then the
    %calculated phi is close enough to one from the function 
    %that we print it
    counter=counter+1;
    %count the number of times it runs through the loops
    a(counter)=b(counter-1);
    b(counter)=a(counter-1)+ b(counter-1);
    %recurssive, add to the vector
    phi = b(counter)./a(counter);
    err = ((asd - phi) / asd) * 100;
end
fprintf('\tThe number of times it took to reach phi is %2d\n\tand the phi that was calculated is %6f\n',counter,phi)
