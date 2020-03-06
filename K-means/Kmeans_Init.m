function centroids = Kmeans_Init(X, K)
  centroids = zeros(K, size(X, 2));
  rand_idx = randperm(K);
  centroids = X(rand_idx(1:K), :);
endfunction