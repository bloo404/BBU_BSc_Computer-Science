function [x, nit] = gauss_iteration(A, b, x0, maxnit, err)
    M = diag(diag(A)) + tril(A, -1);
    N = -triu(A, 1);
    T = inv(M) * N;
    alpha = norm(T, inf);
    c = inv(M) * b;
    for nit = 1:maxnit
        x = T * x0 + c;
        if norm(x - x0, inf) < err * (1 - alpha)/alpha
            return
        end
        x0 = x;
    end
end