function [P] = reconstrP(p, H)
P = []
for i = 1:4
    p_approx = H*p(i,:)'
    p_approx = p_approx(:)./p_approx(3)
    P = [P; p_approx']
end
