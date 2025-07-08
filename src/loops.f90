program loops
    implicit none

    integer :: i, j

    write (*, '(A, /, A, /)') '------------------------------------------------------------------------------|', 'do loop'

    ! Loops for specified cycles -> like a for loop
    do i = 1, 10
        print *, i
    end do

    write (*, '(A, /, A, /)') '------------------------------------------------------------------------------|', 'do loop (specified increment)'

    ! Specifies the increment
    do i = 1, 10, 2
        print *, i
    end do

    write (*, '(A, /, A, /)') '------------------------------------------------------------------------------|', 'do while loop'

    ! do while condition is true
    i = 1
    do while (i < 11)
        print *, i
        i = i + 1
    end do

    write (*, '(A, /, A, /)') '------------------------------------------------------------------------------|', 'exit'

    ! exit is the the same as a C break
    do i = 1, 100
        if (i > 15) then
            exit
        end if
        print *, i
    end do

    write (*, '(A, /, A, /)') '------------------------------------------------------------------------------|', 'cycle'

    ! cycle is the same as a C continue
    do i = 1, 20
        if (mod(i, 2) == 0) then
            cycle
        end if
        print *, i
    end do

    write (*, '(A, /, A, /)') '------------------------------------------------------------------------------|', 'nested loops'

    mainLoop: do i = 1, 10
        subLoop: do j = 1, 10
            if ((j + i) > 10) then
                cycle mainLoop
            endif
            print *, 'i = ', i, ', j = ', j, ', sum = ', i + j
        end do subLoop
    end do mainLoop

    write (*, '(A, /, A, /)') '------------------------------------------------------------------------------|', 'do concurrent loops'

    call parallelLoop

    contains

    subroutine parallelLoop
        real, parameter  :: pi = 3.14159265
        integer, parameter :: n = 10
        real :: result_sin(n)
        integer :: i

        do concurrent (i = 1:n)
            result_sin(i) = sin(i * pi/4.)
        end do

        print *, result_sin

    end subroutine parallelLoop

end program loops