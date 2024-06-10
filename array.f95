program array
implicit none

integer :: a(3), i

real, dimension(5) :: numbers
integer, DIMENSION(5,5) :: matrixtea

! giving values to the a
a = [1, 2, 3]
!printing values

!print*, a

do i = 1,5
    write(*,*) numbers(i)
end do

end program array