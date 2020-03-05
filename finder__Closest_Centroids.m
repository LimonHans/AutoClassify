function idx = finder__Closest_Centroids(X, centroids)
  idx = zeros(size(X, 1), 1);
  K = size(centroids, 1);
  
  corder = zeros(K, 1);
  for i = 1:size(idx, 1)
    for j = 1:K
      corder(j) = sum((X(i, :) - centroids(j, :)).^2);
    endfor
    [value, idx(i)] = min(corder, [], 1);
  endfor
  
##  now = 0, now_min = 0, ans = 0;
##  for i = 1:size(idx)
##    now_min = Inf;
##    for j = 1:K
##      now = sum((X(i, :) - centroids(j, :)).^2);
##      if now < now_min
##        now_min = now;
##        ans = j;
##      endif
##    endfor
##    idx(i) = ans;
##  endfor
endfunction