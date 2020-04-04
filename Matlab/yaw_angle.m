function psi_k = yaw_angle(e, L, N, R)
    Z = length(e);
    psi_k = zeros(Z, 1);
    for k = 2:Z
        psi_k(k)= psi_k(k-1) + (2*pi*R/(N*L))*(e(k-1,1) - e(k-1,2));
    end
end