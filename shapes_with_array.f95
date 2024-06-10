! This is a program that will display the dimentions of a shape
! It will display the area, volume, height, circumfrence, diameter and radius(if applicable)
! Israel Ogwu 05/25/2024

program shapes
implicit none

!variables needed
real :: area, volume, height, circumfrence, diameter, radius, pi, length, width 
integer :: i, ierr
character :: needs
real, DIMENSION(100) :: spheres_array !array to hold the sphere data
real, DIMENSION(100, 3) :: cube_array !array to hold the cube data
!for loops below

write(*,*) "Welcome to the Shape Calculator! This program will help you calculate the dimentions of a shape! Press Enter to conntiue!"    
read (*,*) 

print *, "Is your shape a sphere? (Y/N)"
read (*,*) needs

    !If the shape is a sphere then instantiate pi, read the sphere data file, perform the calculations and write the calculations into a binary file.
    if(needs == 'Y' .or. needs == 'y') then
        pi = 3.14159
        write(*,*) "Reading Radius: "
        open(unit = 10, file = "sphere.txt")
        open(unit = 20, file = "binary_sphere.bin", access = "stream", status= "replace", action = "write", iostat = ierr)

        !100 lines of data in the sphere file, read the data once into the array. 
        read(10, *, iostat = ierr) spheres_array
        do i = 1, 100
            if(ierr .gt. 0) then
                print *, "Error reading file"
                exit
            else if(ierr .lt. 0) then
                print *, "End of file reached"
                exit
            else
                ! Perform calculations by iterating through each value of the array.
                radius = spheres_array(i)
                diameter = 2 * radius
                area = 4 * pi * radius * radius
                circumfrence = 2 * pi * radius
                !write the calculations to the binary file
                write(20, iostat=ierr) area, circumfrence, diameter  
                write(*,*) "Dimentions: ", area, circumfrence, diameter 
            end if
        end do
        close(10)    
        close(20)

    else
        !If the shape is not a sphere(cube), read the cube data file, perform calcuations and write the calculations into a binary file.
        open(unit = 10, file = "cube.txt")
        open(unit = 20, file = "binary_cube.bin", access = "stream", status= "replace", action = "write", iostat = ierr)

        !300 lines of data in the cube file, read the data once into the array.
       
        read(10, *, iostat = ierr) cube_array
        do i = 1, 100
        !because the cube file has 3 seperate values, we need a 2D array to hold the data(line number and the 3 values on that line)
            if(ierr.gt.0) then
                print *, "Error reading file"
                exit
            else if(ierr.lt.0) then
                print *, "End of file reached"
                exit
            else
                ! Perform calculations
                volume = cube_array(i,1) * cube_array(i,2) * cube_array(i,3)
                !write the calculations to the binary file
                write(20, iostat = ierr) volume
                write(*,*) "Volume: ", volume 
                !print *, "Your volume is: ", volume
            end if
        end do
        close(10)
        close(20)

       
    end if
end program shapes

!OLD WAY CUBE:
        ! do  !open the binary file and read the dimentions
        !     read(10, *, iostat = ierr) length, width, height
        !     !check for errors
        !     if(ierr.gt.0) then
        !         print *, "Error reading file"
        !         exit
        !     else if(ierr.lt.0) then
        !         print *, "End of file reached"
        !         exit
        !     else
        !         ! Perform calculations
        !         volume = length * width * height
        !         !write the calculations to the binary file
        !         write(20, iostat = ierr) volume
        !         write(*,*) "Volume: ", volume 
        !         !print *, "Your volume is: ", volume
        !     end if 
        ! end do


!OLD WAY SPHERE:
            ! do !open the binary file and read the radius
            !    ! read(10, *, iostat = ierr) radius 
            !     !open(20,file='',form='binary')
            !     !check for errors
            !     if(ierr .gt. 0) then
            !         print *, "Error reading file"
            !         exit
            !     else if(ierr .lt. 0) then
            !         print *, "End of file reached"
            !         exit
            !     else
            !         ! Perform calculations
            !         diameter = 2 * radius
            !         area = 4 * pi * radius * radius
            !         circumfrence = 2 * pi * radius
            !         !write the calculations to the binary file
            !         write(20, iostat=ierr) area, circumfrence, diameter  
            !         write(*,*) "Dimentions: ", area, circumfrence, diameter 
                  
            !     end if
            ! end do
