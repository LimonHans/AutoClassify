fprintf('K-Means is working.\n');
X = load('test.txt');

K = 3;
max_iteration = 20;

inital_centroids = Kmeans_Init(X, K);
[centroids, idx] = run_Kmeans(X, inital_centroids, max_iteration, true);

fprintf('K-means completed!\n');