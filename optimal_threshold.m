function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)
  % Funcția calculează pragul optim (epsilon) bazat pe probabilitățile date și valorile reale (truths).

  step = (max(probabilities) - min(probabilities)) / 1000;  % Calculul pașului pentru pragul epsilon
  best_F1 = -999;  % Inițializarea celei mai bune valori a scorului F1
  best_epsilon = 0;  % Inițializarea celei mai bune valori a pragului epsilon
  associated_recall = 0;  % Inițializarea valorii asociate a acoperirii (recall)
  n = length(probabilities);  % Lungimea vectorului de probabilități

  % Iterarea prin diferite valori de epsilon, începând de la minim până la maxim cu pașul specificat
  for epsilon = min(probabilities):step:max(probabilities)
    % Inițializarea vectorului de predicții bazate pe pragul curent epsilon
    for i = 1:length(probabilities)
      if probabilities(i) < epsilon
          predictions(i) = 1;
      else
          predictions(i) = 0;
      end
    end

    % Calculul metricilor (true positives, false positives, false negatives) bazate pe predicțiile actuale și valorile reale
    [true_positives, false_positives, false_negatives] = check_predictions(predictions, truths);

    % Calculul metricilor de evaluare (precision, recall, F1-score) bazate pe rezultatele obținute
    [precision, recall, F1] = metrics(true_positives, false_positives, false_negatives);

    % Actualizarea celor mai bune valori și a valorii asociate pentru scorul F1, precizie și acoperire (recall)
    if F1 > best_F1
      best_F1 = F1;
      best_epsilon = epsilon;
      associated_precision = precision;
      associated_recall = recall;
    endif
  endfor
endfunction

