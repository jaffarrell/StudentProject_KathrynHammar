function T_EV = position_vector(e, psi_k, N, R)
    Z = length(e)-1;
    T_EV = zeros(Z, 2);
    for i = 1:Z
        T_EV(i+1,1)= T_EV(i) + (pi*R/N)*cos(psi_k(i+1))*(e(i,1) + e(i,2));
        T_EV(i+1,2)= T_EV(i) + (pi*R/N)*sin(psi_k(i+1))*(e(i,1) + e(i,2));
    end
end