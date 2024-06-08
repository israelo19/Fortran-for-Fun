!This program will read a binary file and write them into a text file
! Israel Ogwu 2024

program binary
use iso_fortran_env
implicit none

real :: num
character(len=100) :: bin_file, txt_file
integer :: ierr, n = 51840000
!integer(int16) :: arr(n)

write(*,*) 'Enter the path of the binary file you want to read(eg. /home/user/file.bin)'
read(*,*) bin_file

write(*,*) 'Enter the name of the text file you want the contents to be put into (eg. text.txt)'
read(*,*) txt_file

write(*,*) 'Reading file: ', bin_file, "..."
write(*,*) 'Writing to file: ', txt_file, "..."

!file im reading from
open(unit=10, file=bin_file, status='old', action='read', iostat = ierr, access = "stream")
open(unit=20, file=txt_file)

do
    !file im writting to

    read(10, iostat = ierr) num
    write(*,*) num
    if(ierr .ne. 0) then
        exit
    else
        write(20, *, iostat = ierr) num
    end if
end do
close(10)
close(20)

end program binary
