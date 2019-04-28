function MV = computeMinDist(X, C)
 n = dist2(X, C)
 MV = []
 for i = 1:4
    [M, I] = min(n(i, :))
    MV = [MV; C(I, :)]
 end
 MV = MV'
end