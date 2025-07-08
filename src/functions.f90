program functions
    implicit none

    integer :: x
    integer :: z

    read *, x

    z = pow2(x)
    print *, z

    contains

        function pow2(x, flag) result(output)
            implicit none

            ! intent(in) -> read only, like C++ const, out for write only, inout for read write
            ! only in should be used in a function to keep it pure, use a sub routine if writes are needed on a argument
            integer, intent(in) :: x
            integer :: output

            ! optional parameter means the function doesn't always need this argument (can be used on sub routines too)
            character, intent(in), optional :: flag

            ! You cna check if an optional parameter has been given with present
            if (present(flag)) then
                print *, 'Optional flag present'
            end if

            output = 2 ** x

        end function pow2

end program functions

