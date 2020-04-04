function T_EV = position_vector(e, psi_k, N, R)
    Z = length(e);
    T_EV = zeros(Z, 2);
    for k = 2:Z
        T_EV(k,1)= T_EV(k-1) + (pi*R/N)*cos(psi_k(k))*(e(k-1,1) + e(k-1,2));
        T_EV(k,2)= T_EV(k-1) + (pi*R/N)*sin(psi_k(k))*(e(k-1,1) + e(k-1,2));
    end
end