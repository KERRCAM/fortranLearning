program logic
    implicit none

    !    ==   or   .eq.
    !    /=   or   .ne.
    !    >    or   .gt.
    !    <    or   .lt.
    !    >=   or   .ge.
    !    <=   or   .le.
    !    .and.
    !    .or.
    !    .not.
    !    .eqv.


    real :: angle

    read *, angle

    if (angle < 0) then
        print *, 'Angle cant be negative'
    else if (angle < 90.0) then
        print *, 'Angle is acute'
    else if (angle == 90) then
        print *, 'Angle is a right angle'
    else if (angle < 180.0) then
        print *, 'Angle is obtuse'
    else if (angle .eq. 180) then
        print *, 'Angle is parallel'
    else if (angle .le. 360) then
        print *, 'Angle is reflexive'
    else
        print *, 'Angle cant be more than 360'
    end if

    if (angle == 90.0) then
        print *, 'Real 90.0'
    end if

end program logic