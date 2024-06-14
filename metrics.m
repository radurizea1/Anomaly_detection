function [precision, recall, F1] = metrics(true_positives, false_positives, false_negatives)
    % Funcția calculează metrici precum precision, recall și F1-score pe baza datelor de intrare.

    % Calculul precisiei (precision)
    if true_positives + false_positives > 0
        precision = true_positives / (true_positives + false_positives);
    else
        precision = 0;
    end

    % Calculul acoperirii (recall)
    if true_positives + false_negatives > 0
        recall = true_positives / (true_positives + false_negatives);
    else
        recall = 0;
    end

    % Calculul scorului F1
    if precision + recall > 0
        F1 = 2 * (precision * recall) / (precision + recall);
    else
        F1 = 0;
    end
end


