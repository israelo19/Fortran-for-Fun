program loop
! 055 <-- jury number 
implicit none

integer :: i


!do i = 0, 30, 3
 !   print *, i 
!end do

i = 1
do while (i < 10)
    print *, i
    i = i + 1
end do
end program loop