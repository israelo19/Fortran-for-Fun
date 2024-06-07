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

    !If the shape is a sphere then instantiate pi, read the sphere data file, perform the calculations and write the calculations into a binary file.
    if(needs == 'Y' .or. needs == 'y') then
        pi = 3.14159
        write(*,*) "Reading Radius: "
        open(unit = 10, file = "sphere.txt")
        
            do !open the binary file and read the radius
                read(10, *, iostat = ierr) radius 
                open(unit = 20, file = "binary_sphere.bin")
                !check for errors
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
                    !write the calculations to the binary file
                    write(20, *) area, circumfrence, diameter                    
                end if
            end do
        close(10)    
        close(20)
    else
        !If the shape is not a sphere(cube), read the cube data file, perform calcuations and write the calculations into a binary file.
        open(unit = 10, file = "cube.txt")
        do  !open the binary file and read the dimentions
            read(10, *, iostat = ierr) length, width, height
            open(unit = 20, file = "binary_cube.bin")
            !check for errors
            if(ierr > 0) then
                print *, "Error reading file"
                exit
            else if(ierr < 0) then
                print *, "End of file reached"
                exit
            else
                ! Perform calculations
                volume = length * width * height
                !write the calculations to the binary file
                write(20, *) volume
                !print *, "Your volume is: ", volume
            end if 
        end do
        close(10)
        close(20)

       
    end if
end program shapes
