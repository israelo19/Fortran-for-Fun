! T his is a program that will display the dimentions of a shape
! It will display the area, volume, height, circumfrence, diameter and radius(if applicable)
! Israel Ogwu 05/25/2024

program shapes
implicit none

real :: area, volume, height, circumfrence, diameter, radius, pi, length, width !variables needed
character :: needs
print *, "Welcome to the Shape Calculator! This program will help you calculate the dimentions of a shape! Press Enter to conntiue!"
read (*,*)
print *, "First thing's first!(enter)"
read (*,*)
print *, "If your shape is a sphere hit 'Y', if it's a rectangular prism or cube, hit 'N'"
read *, needs

if(needs == 'Y' .or. needs == 'y') then
    pi = 3.14159

    print *, "enter Radius: "
    read *, radius
   ! print *, "the length width and radius are: ", length, width, radius

    ! Perform calculations

    diameter = 2 * radius
    area = 4 * pi * radius * radius
    circumfrence = 2 * pi * radius
    
    print *, "Your dimensions are: Area: ", area, "Circumfrence: ", circumfrence, "Diameter: ", diameter
    else
        print *, "Enter length, width and height(in this order)"
        read *, length, width, height

        !Perform calculations

       ! area = length * width
        volume = length * width * height
        
        print *, "Your dimensions are: Volume: ", volume
    

        !print *, "the length and width are: ", length, width
end if



!things to calculate area, volume, circumference, diameter, radius. 



end program shapes
