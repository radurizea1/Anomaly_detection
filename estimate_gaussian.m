function [mean_values, variances] = estimate_gaussian(X)
  m = size(X, 1); % Numărul de exemple (rânduri) din matricea X
  n = size(X, 2); % Numărul de caracteristici (coloane) din matricea X

  variances = zeros(n, n); % Inițializăm matricea de varianțe

  % Calculăm media pentru fiecare caracteristică și le stocăm în mean_values
  mean_values = zeros(1, n);
  for i = 1:n
      mean_values(i) = mean(X(:, i)); % Media pentru caracteristica i
  end

  % Calculăm varianțele
  for i = 1:m
      % Pentru fiecare exemplu (rând) din X, actualizăm matricea de varianțe
      variances = variances + ((X(i, :) - mean_values)' * (X(i, :) - mean_values));
  end

  % Împărțim la m pentru a obține varianța medie
  variances = variances / m;
end

