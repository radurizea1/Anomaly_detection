function [true_positives, false_positives, false_negatives] = check_predictions(predictions, truths)
  % Inițializăm contorii
  true_positives = 0;
  false_positives = 0;
  false_negatives = 0;

  % Calculăm lungimea vectorului de predicții (și a celui de valori adevărate)
  n = length(predictions);

  % Parcurgem fiecare element din vectorii de predicții și valori adevărate
  for i = 1:n
    % Verificăm dacă predicția și valoarea adevărată sunt ambele 1 (true positive)
    if (predictions(i) == 1 && truths(i) == 1)
      true_positives = true_positives + 1;
    end
    % Verificăm dacă predicția este 1, dar valoarea adevărată este 0 (false positive)
    if (predictions(i) == 1 && truths(i) == 0)
      false_positives = false_positives + 1;
    end
    % Verificăm dacă predicția este 0, dar valoarea adevărată este 1 (false negative)
    if (predictions(i) == 0 && truths(i) == 1)
      false_negatives = false_negatives + 1;
    end
  end
end

