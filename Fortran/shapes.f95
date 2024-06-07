! This is a program that will display the dimentions of a shape
! It will display the area, volume, height, circumfrence, diameter and radius(if applicable)
! Israel Ogwu 05/25/2024

program shapes
implicit none

!variables needed
real :: area, volume, height, circumfrence, diameter, radius, pi, length, width 
integer :: i, ierr
character :: needs

!for loops below
i = 1

write(*,*) "Welcome to the Shape Calculator! This program will help you calculate the dimentions of a shape! Press Enter to conntiue!"    
read (*,*) 

print *, "Is your shape a sphere? (Y/N)"
read (*,*) needs

    !If the shape is a sphere then instantiate pi, read the sphere data file and perform the calculations.
    if(needs == 'Y' .or. needs == 'y') then
        pi = 3.14159
        write(*,*) "Reading Radius: "
        open(unit = 10, file = "sphere.txt")
            do 
                read(10, *, iostat = ierr) radius
                if(ierr > 0) then
                    print *, "Error reading file"
                    exit
                else if(ierr < 0) then
                    print *, "End of file reached"
                    exit
                else
                    ! Perform calculations
                    diameter = 2 * radius
                    area = 4 * pi * radius * radius
                    circumfrence = 2 * pi * radius
                    print *, "Your dimensions are: Area: ", area, "Circumfrence: ", circumfrence, "Diameter: ", diameter
                end if
            end do
        close(10)    
    else
        !If the shape is not a sphere(cube), read the cube data file and perform calcuations.
        open(unit = 10, file = "cube.txt")
        do 
            read(10, *, iostat = ierr) length, width, height
            if(ierr > 0) then
                print *, "Error reading file"
                exit
            else if(ierr < 0) then
                print *, "End of file reached"
                exit
            else
                ! Perform calculations
                volume = length * width * height
                print *, "Your volume is: ", volume
            end if
        end do
    end if
end program shapes
