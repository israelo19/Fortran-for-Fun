! T his is a program that will display the dimentions of a shape
! It will display the area, volume, height, circumfrence, diameter and radius(if applicable)
! Israel Ogwu 05/25/2024

program shapes
implicit none

real :: area, volume, height, circumfrence, diameter, radius, pi, length, width !variables needed

character :: needs
print *, "Welcome to the Shape Calculator! This program will help you calculate the dimentions of a shape! Press Enter to conntiue!"
read (*,*)
print *, "First thing's first!(Enter)"
read (*,*)
print *, "Is your shape contain a circle? (Y/N)"
read *, needs

if(needs == 'Y' .or. needs == 'y') then
    pi = 3.14159

    print *, "enter length, width, and radius(in this order)"
    read *, length, width, radius
    print *, "the length width and radius are: ", length, width, radius

end if



!things to calculate area, volume, circumference, diameter, radius. 



end program shapes









!read *, needs_pi

!if(needs_pi .eqv. .true.) then
 !   print *, "Pi is true"
!end if


!if(needs_pi .eqv. .true.) then
 !   print *, "Pi is true"
!end if

!if(p .eqv. .true.)
 !   print *, "YOU NEED PI"
!end if