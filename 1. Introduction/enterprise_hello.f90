! Declaring the the beginning of the main program (enterprise hello). 
! While naming would be optional here (just "program" would work), it is recommended
! for organization purposes.
program enterprise_hello
    ! Disable implicit typing rules:
    ! By default, variables starting with I–N are INTEGER, and A–H, O–Z are REAL.
    ! This is unsafe because typos silently create new variables.
    ! "implicit none" forces explicit type declaration (best practice in modern Fortran).
    implicit none

    character(len=*), parameter :: PERSON = "World"
    character(len=:), allocatable :: greeting

    greeting = greet(PERSON)
    Print '(A)', greeting
contains
    pure function greet(person_) result(greeting_)
        character(len=*), intent(in) :: person_
        character(len=:), allocatable :: greeting_

        greeting_ = "Hello, " // person_ // "!"
    end function greet
end program enterprise_hello
! Just end would work here. But more a more expository approach is preferred
