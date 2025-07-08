program input
    implicit none

    integer :: x, y
    integer :: sum
    integer :: product

    print *, 'Enter a value for x:'
    read *, x

    print *, 'Enter a value for y:'
    read *, y

    sum = x + y
    product = x * y

    print *, 'Sum:', sum
    print *, 'Product:', product

end program input