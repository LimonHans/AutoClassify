function idx = finder__Closest_Centroids(X, centroids)
  idx = zeros(size(X, 1), 1);
  K = size(centroids, 1);
  
  now = 0, now_min = 0, ans = 0;
  for i = 1:size(idx)
    now_min = Inf;
    for j = 1:K
      now = sum((X(i, :) - centroids(j, :)).^2);
      if now < now_min
        now_min = now;
        ans = j;
      endif
    endfor
    idx(i) = ans;
  endfor
endfunction