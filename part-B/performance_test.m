function performance_test()

    % Get the train and test data in workspace
    build_matrix_and_split

    % Read Fis
    fis = readfis('myManualFis');
    fis_optimized = readfis('myManualOptimizedFis');

    % Test inputs and targets
    X_test = test_set(:,1:6);
    Y_test = test_set(:,7);

    % Evaluate performance
    fis_Y_pred = evalfis(fis,X_test);
    fis_optimized_Y_pred = evalfis(fis_optimized,X_test);

    % Compute the mean squared error (mse)
    fis_mse = immse(Y_test,fis_Y_pred)
    fis_optimized_mse = immse(Y_test,fis_optimized_Y_pred)
end