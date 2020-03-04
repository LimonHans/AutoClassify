function plot__Kmeans_progress(X, centroids, bef_centroids, idx, K, i)
  plotDataPoints(X, idx, K);
  plot(centroids(:, 1), centroids(:, 2), 'x', 'MarkerEdgeColor', 'k', ...point
  'MarkerSize', 15, 'LineWidth', 4);
  for j = 1:size(centroids, 1)%line
    drawLine(centroids(j, :), bef_centroids(j, :));
  endfor
  title(sprintf('K-means-Progress in iteration %d', i));
endfunction