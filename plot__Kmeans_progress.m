function plot__Kmeans_progress(X, centroids, bef_centroids, idx, K, i)
  plot_points(X, idx, K);
  plot(centroids(:, 1), centroids(:, 2), 'x', 'MarkerEdgeColor', 'k', ...point
  'MarkerSize', 9, 'LineWidth', 2);
  for j = 1:size(centroids, 1)%line
    plot_line(centroids(j, :), bef_centroids(j, :));
  endfor
  title(sprintf('K-means-Progress in iteration %d', i));
endfunction