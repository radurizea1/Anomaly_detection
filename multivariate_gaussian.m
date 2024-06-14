function probabilities = multivariate_gaussian(X, mean_values, variances)
  % Funcția calculează probabilitățile pentru distribuția gaussiană multivariată pentru fiecare observație din matricea X.

  [n, m] = size(X);   % Determină dimensiunile matricei X: n - numărul de observații, m - dimensiunea fiecărei observații

  probabilities = zeros(n, 1);  % Inițializează vectorul de probabilități cu zerouri pentru a stoca rezultatele

  for i = 1:n
    const = 1 / ((2 * pi)^(m / 2) * sqrt(det(variances)));  % Calculul constantei din formula densității gaussiane multivariate

    % Calculul exponentului din formula densității gaussiane multivariate
    k = exp((-1/2) * (X(i,:) - mean_values) * inv(variances) * (X(i,:) - mean_values)');

    % Calculul probabilității pentru observația i și stocarea în vectorul de probabilități
    probabilities(i) = const * k;
  endfor
endfunction

