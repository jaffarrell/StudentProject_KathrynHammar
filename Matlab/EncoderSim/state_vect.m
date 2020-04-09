function state = state_vect(e, L, N, R)
    Z = length(e);
    psi_v = zeros(Z, 1);
    T_EV = zeros(Z, 2);
    for k = 2:Z
        psi_v(k)= psi_v(k-1) + (2*pi*R/(N*L))*(e(k-1,1) - e(k-1,2));
        T_EV(k,1)= T_EV(k-1,1) + (pi*R/N)*cos(psi_v(k))*(e(k-1,1) + e(k-1,2));
        T_EV(k,2)= T_EV(k-1,2) + (pi*R/N)*sin(psi_v(k))*(e(k-1,1) + e(k-1,2));
    end
    state = [T_EV psi_v];
end