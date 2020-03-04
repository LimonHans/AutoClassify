function centroids = distan_P2C(X, idx, K)
  [m n] = size(X);
  centroids = zeros(K, n);
  for i = 1:K
    centroids(i, :) = X'*(idx == i)./sum(sum(idx == i));
  endfor
endfunction