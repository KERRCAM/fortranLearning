program functions
    implicit none

    integer :: x
    integer :: z

    read *, x

    z = pow2(x)
    print *, z

    contains

        function pow2(x) result(output)
            implicit none

            ! intent(in) -> read only, like C++ const, out for write only, inout for read write
            ! only in should be used in a function to keep it pure, use a sub routine if writes are needed on a parameter
            integer, intent(in) :: x
            integer :: output

            output = 2 ** x

        end function pow2

end program functions

