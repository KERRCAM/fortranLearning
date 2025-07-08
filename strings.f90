program strings
    implicit none

    character (:), allocatable :: forename
    character (:), allocatable :: surname

    ! Explicit allocation
    allocate(character(4) :: forename)
    forename = 'Kerr'

    ! On assignment
    surname = 'Cameron'

    print *, forename//' '//surname

end program strings