function fis = readFis(num_centroids)

    if num_centroids == 3 
        fis = readfis('myManualOptimizedFis-3centroid-05rangeofinfluence');
    elseif num_centroids == 20
        fis = readfis('myManualOptimizedFis-20centroid-03rangeofinfluence');
    elseif num_centroids == 9
        fis = readfis('myOptimizedManualFis_centroids_9_range_influence04');
    elseif num_centroids == -1
        fis = readfis('fisTest');    
    else 
        error('There is no fis with the given number of centroids!'); 
    end
end

