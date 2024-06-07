! This is a program that will display the dimentions of a shape
! It will display the area, volume, height, circumfrence, diameter and radius(if applicable)
! Israel Ogwu 05/25/2024

program shapes
implicit none

real :: area, volume, height, circumfrence, diameter, radius, pi, length, width !variables needed
integer :: i 
character :: needs

i =1

write(*,*) "Welcome to the Shape Calculator! This program will help you calculate the dimentions of a shape! Press Enter to conntiue!"    
read (*,*) 

print *, "Is your shape a sphere? (Y/N)"
read (*,*) needs

if(needs == 'Y' .or. needs == 'y') then
    pi = 3.14159
    write(*,*) "Reading Radius: "
    open(unit = 5, file = "sphere.txt")
    do while(.true.)
        read (5, *, end=100) radius
        ! Perform calculations
        diameter = 2 * radius
        area = 4 * pi * radius * radius
        circumfrence = 2 * pi * radius
        print *, "Your dimensions are: Area: ", area, "Circumfrence: ", circumfrence, "Diameter: ", diameter
    end do
    100 continue
    close(5)
else
    open(unit = 10, file = "cube.txt")
    do while(.true.)
        read (10, *, end=200) length, width, height
  

        !Perform calculations

        volume = length * width * height
            
        print *, "Your dimensions are: Volume: ", volume
    end do
    200 continue
    close(10)

end if


end program shapes
