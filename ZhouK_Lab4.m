function output = ZhouK_Lab4(flag, func_ary, init_ary, epsilon)

% set the flag variable
first = true;

% -------------------------------------------------------------------

% Perform the false position algorithm
if flag == 1
    
    % unpack the func_ary vector
    f = func_ary;
    
    % unpack the init_ary vector
    x_l = init_ary(1);

    % unpack the init_ary vector
    x_u = init_ary(2);

    % Perform the algorithm once before entering the while loop

    % calculate the root of the approximate function
    x_r = x_u - (f(x_u) * (x_u - x_l)) / (f(x_u) - f(x_l));

    % calculate the new range of the root
    if (f(x_r) * f(x_u) < 0)

        % the root is between x_r and x_u
        x_l = x_r;

    else

        % the root is between x_l and x_r
        x_u = x_r;

    end

    % begin iterating the algorithm
    while first || abs(((x_r - x_rold) / x_r)) > epsilon
        
        % store the value of x_r from the previous iteration
        x_rold = x_r;

        % calculate the root of the approximate function
        x_r = x_u - (f(x_u) * (x_u - x_l)) / (f(x_u) - f(x_l));

        % calculate the new range of the root
        if (f(x_r) * f(x_u) < 0)

            % the root is between x_r and x_u
            x_l = x_r;

        else

            % the root is between x_l and x_r
            x_u = x_r;

        end
        
        % close the short circuit variable
        first = false;

    end
    
    % passing the final answer to the output variable
    output = x_r;


% -------------------------------------------------------------------

% Perform the secant algorithm
elseif flag == 2

    % unpack the func_ary vector
    f = func_ary;
    
    % unpack the init_ary vector
    x_prev = init_ary(1);

    % unpack the init_ary vector
    x_curr = init_ary(2);
    
    % store the old value of x_curr
    old_x_curr = x_curr;

    % calculate the new approximation
    x_curr = x_curr - (f(x_curr) * (x_curr - x_prev)) / (f(x_curr) - f(x_prev));

    % store the new x_prev as the old x_curr
    x_prev = old_x_curr;

    % begin iterating the algorithm
    while abs(((x_curr - x_prev) / x_curr)) > epsilon

        % store the old value of x_curr
        old_x_curr = x_curr;

        % calculate the new approximation
        x_curr = x_curr - (f(x_curr) * (x_curr - x_prev)) / (f(x_curr) - f(x_prev));

        % store the new x_prev as the old x_curr
        x_prev = old_x_curr;

    end
    
    % passing the final answer to the output variable
    output = x_curr;

% -------------------------------------------------------------------

% Apply the Mullers method
elseif flag == 3

% -------------------------------------------------------------------

% Apply the modified secant method
else

end

