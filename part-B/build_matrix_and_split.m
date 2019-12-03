[train_set, test_set] = build_matrix_and_split_();

function [train_set, test_set] = build_matrix_and_split_()

    load('out.mat');
    discrete = out.DiscreteOutput;
    input_random = out.InputRandom;
    matrix = [];

    % Each line of the matrix containts the antecedents
    % and the consequent of each rules (7 columns):
    % 6 columns for antecedents and the last one for 
    % the consequents
    % The 7th column is the time series output, target
    % Learning starts on the 3rd instance, no past values 
    for i=4:length(discrete)
        row = [discrete(i-1) discrete(i-2) ...
            discrete(i-3) input_random(i-1) ...
            input_random(i-2) input_random(i-3) ... 
            discrete(i)];

        matrix = [matrix; row];
    end
    
    save matrix;
    save matrix.dat matrix -ascii
    
    train_set = matrix(3:round(length(matrix)*0.7),:);
    test_set = matrix(round(length(matrix)*0.7)+1:length(matrix),:);
    
end