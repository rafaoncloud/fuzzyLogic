function fis = readFis(num_centroids)

    if num_centroids == 3 
        fis = readfis('myOptimizedManualFis_centroids_3_range_influence0699');
    elseif num_centroids == 5
        fis = readfis('myManualOptimizedFis_centroids_5_range_influence05');
    elseif num_centroids == 9
        fis = readfis('myOptimizedManualFis_centroids_9_range_influence04');
    elseif num_centroids == -1
        fis = readfis('fisTest');    
    else 
        error('There is no fis with the given number of centroids!'); 
    end
end

