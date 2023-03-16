program chemical_bonds
    implicit none
    real :: bond_energy, bond_length
    integer :: bond_type

    ! Get input
    print *, "Enter the bond type (1 = covalent, 2 = ionic, 3 = metallic):"
    read *, bond_type
    
    ! Calculate bond properties
    select case (bond_type)
    case (1)
        bond_energy = 100.0
        bond_length = 1.5
    case (2)
        bond_energy = 200.0
        bond_length = 2.0
    case (3)
        bond_energy = 300.0
        bond_length = 2.5
    case default
        print *, "Invalid bond type."
        stop
    end select
    
    ! Output results
    print *, "Bond energy: ", bond_energy, " kJ/mol"
    print *, "Bond length: ", bond_length, " Angstroms"
end program chemical_bonds
