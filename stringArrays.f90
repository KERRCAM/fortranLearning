program stringArrays
    implicit none


    character(len = 10), dimension(2) :: keys, vals

    keys = [character(len = 10) :: "Username", "ID"] ! will cut any values longer than 10 and fill any shorter with whitespace
    vals = [character(len = 10) :: "Kerr Cameron", "456"]

    call show(keys, vals)

    contains

    subroutine show(aKeys, aVals)

        character(len = *), intent(in) :: aKeys(:), aVals(:)
        integer :: i

        do i = 1, size(aKeys)
            print *, trim(aKeys(i)), ": ", trim(aVals(i)) ! trim removes the added whitespace
        end do

    end subroutine show

end program stringArrays