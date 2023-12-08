% FODT model function
fodt_model = @(theta, t) theta(1) * (1 - exp(-t / theta(2))) + theta(3);

% Initial guess for parameters [K, T, L]
initial_guess = [1, 50, 5];

% Nonlinear regression
theta_hat = lsqcurvefit(fodt_model, initial_guess, t, y);

% Extracting parameters
K_hat = theta_hat(1);
T_hat = theta_hat(2);
L_hat = theta_hat(3);

% Displaying results
disp(['Estimated Parameters: K = ', num2str(K_hat), ', T = ', num2str(T_hat), ', L = ', num2str(L_hat)]);

% Plotting original data and fitted model
figure;
plot(t, y, 'o', t, fodt_model(theta_hat, t), '-');
legend('Original Data', 'Fitted FODT Model');
xlabel('Time');
ylabel('Output');