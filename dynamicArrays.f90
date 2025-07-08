program dynamicArrays
    implicit none

    integer, allocatable :: arr1(:)
    integer, allocatable :: arr2(:,:)

    allocate(arr1(10))
    allocate(arr2(10, 10))

    ! Do stuff ....

    deallocate(arr1)
    deallocate(arr2)


end program dynamicArrays