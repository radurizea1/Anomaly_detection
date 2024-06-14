function probability = gaussian_distribution(X, mean_value, variance)
  n = size(x,1);     % Determină numărul de rânduri în matricea X (ar trebui să fie X în loc de x)
  m = size(x,2);     % Determină numărul de coloane în matricea X (ar trebui să fie X în loc de x)
  probabilities = 0; % Inițializează variabila probabilities cu 0

  for i = 1:m        % Parcurge coloanele matricei X
    for j = 1:n      % Parcurge rândurile matricei X (nu este folosit în mod corect în codul actual)
      probabilities = multivariate_gaussian(X, mean_values, variances); % Calculează probabilitățile folosind funcția multivariate_gaussian
    endfor
  endfor
endfunction

