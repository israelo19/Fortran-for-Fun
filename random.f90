program random
implicit none

! this is with the random_number function

! real :: r
! integer :: i, n, count, upper_lim = 100, lower_lim = -100
! count = 0
! n=10
! do i = 1, n
! call random_number(r)
!     r = lower_lim + (upper_lim - lower_lim)*r
!     write(*,*) "Random number: " , r
!     count = count + 1

! end do
!     write(*,*) "Count: " , count
! end program random



! this is with the seed

real :: x
integer :: i
integer :: seed
integer :: upper_lim = 100, lower_lim = -100
seed = 123456789

call srand(seed)

open (unit=10, file='random_nums.dat', action='write', position='append')
do i = 1, 1000000
    x = lower_lim + (upper_lim-lower_lim)*rand()
    write(10,*) x
end do 
close(10)

end program random

