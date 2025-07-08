program variables
    implicit none

    integer :: amount
    real :: pi, e
    complex :: frequency
    character :: initial
    logical :: isOkay

    amount = 100
    pi = 3.14
    e = 2.72
    frequency = (1.0, -0.5)
    initial = 'K'
    isOkay = .false.

    print *, 'Amount = ', amount
    print *, 'pi = ', pi
    print *, 'e = ', e
    print *, 'frequency = ', frequency
    print *, 'initial = ', initial
    print *, 'isOkay = ', isOkay

end program variables