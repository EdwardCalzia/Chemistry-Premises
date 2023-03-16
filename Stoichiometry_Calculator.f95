program stoichiometry_calculator
    implicit none
    integer :: reactant1_coeff, reactant2_coeff, product_coeff, reactant1_amount
    real :: reactant1_mw, reactant2_mw, product_mw, reactant1_moles, reactant2_moles, product_moles
    character(len=100) :: reactant1_name, reactant2_name, product_name
    
    ! Get input
    print *, "Enter the name of reactant 1:"
    read *, reactant1_name
    print *, "Enter the molecular weight of reactant 1 (g/mol):"
    read *, reactant1_mw
    print *, "Enter the stoichiometric coefficient of reactant 1:"
    read *, reactant1_coeff
    print *, "Enter the amount of reactant 1 (g):"
    read *, reactant1_amount
    print *, "Enter the name of reactant 2:"
    read *, reactant2_name
    print *, "Enter the molecular weight of reactant 2 (g/mol):"
    read *, reactant2_mw
    print *, "Enter the stoichiometric coefficient of reactant 2:"
    read *, reactant2_coeff
    print *, "Enter the name of product:"
    read *, product_name
    print *, "Enter the molecular weight of product (g/mol):"
    read *, product_mw
    print *, "Enter the stoichiometric coefficient of product:"
    read *, product_coeff
    
    ! Calculate moles of reactants and product
    reactant1_moles = reactant1_amount / reactant1_mw
    reactant2_moles = reactant1_moles * (reactant2_coeff / reactant1_coeff)
    product_moles = reactant1_moles * (product_coeff / reactant1_coeff)
    
    ! Calculate amount of product formed or reactant consumed
    if (product_coeff > 0) then
        print *, "Amount of ", trim(product_name), " formed is ", product_moles*product_mw, " g."
    else
        print *, "Amount of ", trim(reactant1_name), " consumed is ", abs(reactant1_amount - reactant2_moles*reactant2_mw), " g."
    endif
    
end program stoichiometry_calculator
