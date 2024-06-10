! This will be a program that converts kilometers to miles
! Israel Ogwu
! 05/23/2024

program convert
Implicit none
real :: km, miles
print *, "Enter Kilometers: "
read (*,*) km
miles = km * 0.6213711922
print *, km, " km", " In Miles: " , miles, "m"
end program convert
 
