function [R] = computeR(lambda, A, H)
    h1 = H(:, 1)
    h2 = H(:, 2)
    h3 = H(:, 3)
    
    r1 = lambda*inv(A)*h1
    r2 = lambda*inv(A)*h2
    r3 = cross(r1,r2)
    t = lambda*inv(A)*h3
    
    R = [r1'; r2'; r3']'