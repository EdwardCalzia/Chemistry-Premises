program hess_law
  implicit none
  
  ! Declare variables
  real :: enthalpy_change_A, enthalpy_change_B, enthalpy_change_C, enthalpy_change_D, enthalpy_change_E, total_enthalpy_change
  
  ! Input enthalpy changes for each reaction
  print *, "Enter the enthalpy change (kJ/mol) for reaction A:"
  read *, enthalpy_change_A
  
  print *, "Enter the enthalpy change (kJ/mol) for reaction B:"
  read *, enthalpy_change_B
  
  print *, "Enter the enthalpy change (kJ/mol) for reaction C:"
  read *, enthalpy_change_C
  
  print *, "Enter the enthalpy change (kJ/mol) for reaction D:"
  read *, enthalpy_change_D
  
  print *, "Enter the enthalpy change (kJ/mol) for reaction E:"
  read *, enthalpy_change_E
  
  ! Calculate the total enthalpy change
  total_enthalpy_change = enthalpy_change_A + enthalpy_change_B + enthalpy_change_C + enthalpy_change_D + enthalpy_change_E
  
  ! Output the total enthalpy change
  print *, "The total enthalpy change for the reaction is ", total_enthalpy_change, " kJ/mol"
  
end program hess_law
