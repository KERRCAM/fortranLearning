program arrays
    implicit none

    ! Can be defined a couple ways
    integer, dimension(10) :: arr1
    integer :: arr2(10)

    ! 2D
    integer :: arr3(10, 10)

    ! Custom bounds
    integer :: arr4(0:9)
    integer :: arr5(-5:5)

    arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    print *, arr1

    print *, arr1(1:10:2) ! Prints elements 1 to 10 going up by 2 pos each time, printing only odds

    arr2 = [(i, i = 1, 10)] ! Constructs an array in arr2 of length 10 with values 1 - 10

    print *, arr2

    arr2(3:6) = 50 ! Sets elements 3 - 6 (inclusive) to 50
    print *, arr2

end program arrays