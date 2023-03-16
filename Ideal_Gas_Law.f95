program ideal_gas_law
    implicit none
    real :: P, V, n, R, T
    
    ! Set values for variables
    P = 1.0
    V = 1.0
    n = 1.0
    R = 0.0821 ! L atm/mol K
    T = 273.15 ! K
    
    ! Calculate the value of PV/nRT
    print *, "PV/nRT = ", P*V/(n*R*T)
    
end program ideal_gas_law
