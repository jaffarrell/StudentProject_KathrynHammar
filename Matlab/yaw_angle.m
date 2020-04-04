function psi_k = yaw_angle(e, L, N, R)
    Z = length(e)-1;
    psi_k = zeros(Z, 1);
    for i = 1:Z
        psi_k(i+1)= psi_k(i) + (2*pi*R/(N*L))*(e(i,1) - e(i,2));
    end
end