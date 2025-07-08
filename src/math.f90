program math
    use, intrinsic :: iso_fortran_env, only: dp=>real64
    implicit none

    real(dp) :: x, y, z

    x = 5
    y = 6

    z = x - y
    print *, z

    z = x ** y
    print *, z

    z = y / x
    print *, z

end program math