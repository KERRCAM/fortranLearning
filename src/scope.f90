module declarations
    implicit none

    integer :: x = 10
    integer :: y = 5

end module declarations

program scope
    implicit none

    block
        use declarations, only: x, y ! module import
        integer :: z

        z = x * y

        print *, z

    end block

    ! Cant use z, x or y here as they are now out of scope

end program scope