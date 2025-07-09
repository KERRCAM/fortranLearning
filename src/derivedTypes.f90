module positionType

    type :: position
        integer :: x
        integer :: y
        real :: distance
        character :: displayed
    end type position

end module positionType

program derivedTypes

    use positionType, only: position
    type(position) :: player

    player%x = 3
    player%y = 4
    player%displayed = 'n'

    call displayPosition(player)

    contains

    function euclideanDistance(x, y) result (distance)

        integer, intent(in) :: x, y
        real :: distance

        distance = ((x ** 2) + (y ** 2)) ** 0.5

    end function euclideanDistance

    subroutine displayPosition(player)

        use positionType, only: position

        type(position), intent(inout) :: player

        print *, 'Player is ', player%distance, ' units from the origin.'

        player%displayed = 'y'

    end subroutine displayPosition

end program derivedTypes
