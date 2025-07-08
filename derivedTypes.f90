module positionType

    contains

    type :: position
        integer :: x, y, distance
        character :: name(12)
        character :: displayed
    end type

end module positionType

program derivedTypes

    use positionType, only: position

    character :: newName(12)
    type(position) :: player

    read *, newName

    player(x = 10, y = 15)
    player%name = newName
    player%displayed = 'n'
    player%distance = euclideanDistance(player%x, player%y)

    call displayPosition(player)

    contains

    function euclideanDistance(x, y) result (distance)

        integer, intent(in) :: x, y
        real :: distance

        distance == ((x ** 2) + (y ** 2)) ** 0.5

    end function euclideanDistance

    subroutine displayPosition(player)

        use positionType, only: position

        type(position), intent(inout) :: player

        print *, 'Player ', trim(player%name), 'is ', player%distance, 'from the origin.'

        player%displayed = 'y'

    end subroutine displayPosition

end program derivedTypes
