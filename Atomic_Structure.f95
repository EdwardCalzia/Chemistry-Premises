program atomic_structure
    implicit none
    integer :: atomic_number, num_protons, num_neutrons, num_electrons, num_valence_electrons
    real :: atomic_mass

    ! Get input
    print *, "Enter the atomic number:"
    read *, atomic_number
    print *, "Enter the number of neutrons:"
    read *, num_neutrons
    print *, "Enter the number of electrons:"
    read *, num_electrons
    
    ! Calculate atomic properties
    num_protons = atomic_number
    atomic_mass = num_protons + num_neutrons
    num_valence_electrons = atomic_number - (2 * (atomic_number/2))
    
    ! Output results
    print *, "Atomic number: ", atomic_number
    print *, "Atomic mass: ", atomic_mass
    print *, "Number of valence electrons: ", num_valence_electrons
end program atomic_structure
