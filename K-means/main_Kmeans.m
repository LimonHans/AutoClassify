fprintf('K-Means is working.\n');
X = load('X');
K = load('N');
max_iteration = load('K');

inital_centroids = Kmeans_Init(X, K);
[centroids, idx] = run_Kmeans(X, inital_centroids, max_iteration, true);

fprintf('K-means completed!\n');