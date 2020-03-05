function [centroids, idx] = run_Kmeans(X, inital_centroids, max_iteration, progress_plot)
  figure;
  hold on;
  
  [m n] = size(X);
  K = size(inital_centroids, 1);
  centroids = inital_centroids;
  bef_centroids = centroids;
  idx = zeros(m, 1);
  
  for i = 1:max_iteration
    fprintf('Kmeans running in %dth loop(max loop %d)\n', i, max_iteration);
    if exist('OCTAVE_VERSION')
      fflush(stdout);
    endif
    idx = finder__Closest_Centroids(X, centroids);
    plot__Kmeans_progress(X, centroids, bef_centroids, idx, K, i);
    bef_centroids = centroids;
    centroids = distan_P2C(X, idx, K);
  endfor
  
  hold off;
endfunction