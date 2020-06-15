%CHOOSE BETWEEN TWO FUNCTIONS, LEIBNIZ AND MACHIN, TO ESTIMATE PI

% Call a function to display a menu and get a choice
choice = fn_PI_menu;
% include Choice 3 to exit (quit) the program
while choice ~= 3
    switch choice
        case 1
            % Print result from Machin's formula
            fprintf('The Machin Approximating of pi is %.10f\n',fn_PI_Machin)
            choice = fn_PI_menu;
        case 2
            % Approximate pi using Leibniz,
            % allowing user to specify # of terms
            y = input('Enter a positive number, preferably large:  \n');
            if y < 0
                fprintf('Error! Number is negative. Please try again and input a positive number.\n')
            else
                leibniz = fn_PI_Leibniz(y);
                fprintf('The Leibniz approximation of pi with %d iterations is %.10f\n',y,leibniz)
            end
            % Display menu again and get user's choice
            choice = fn_PI_menu;
    end
end
