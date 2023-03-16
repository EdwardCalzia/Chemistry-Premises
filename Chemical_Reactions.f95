program chemical_reactions
    implicit none
    integer :: reactant1_coeff, reactant2_coeff, product_coeff
    real :: delta_h_rxn, delta_g_rxn, delta_s_rxn, t_kelvin
    character(len=100) :: reactant1_name, reactant2_name, product_name

    ! Get input
    print *, "Enter the name of reactant 1:"
    read *, reactant1_name
    print *, "Enter the stoichiometric coefficient of reactant 1:"
    read *, reactant1_coeff
    print *, "Enter the name of reactant 2:"
    read *, reactant2_name
    print *, "Enter the stoichiometric coefficient of reactant 2:"
    read *, reactant2_coeff
    print *, "Enter the name of product:"
    read *, product_name
    print *, "Enter the stoichiometric coefficient of product:"
    read *, product_coeff
    print *, "Enter the enthalpy change for the reaction (kJ/mol):"
    read *, delta_h_rxn
    print *, "Enter the entropy change for the reaction (J/mol*K):"
    read *, delta_s_rxn
    
    ! Calculate reaction properties
    delta_g_rxn = delta_h_rxn - (t_kelvin * delta_s_rxn)
    
    ! Output results
    print *, "The equilibrium constant for the reaction is: ", exp(-delta_g_rxn/(8.314*t_kelvin))
end program chemical_reactions
