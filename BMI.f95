program bmi
implicit none
real:: bm,h,w
character(len=1)::ask
do
print*, "Enter your weight in kilograms : "
read*,    w
print*, "Enter your height in meters : "
read*,    h
call formula(bm,w,h)
print*, "------------------------"
if (bm<18.4 .or. bm==18.4) then
print*, "Underweight", bm
else if (bm>18.5 .or. bm<24.9) then
print*, "Normal",bm
else if (bm>25.0 .or. bm<39.9) then
print*, "Overweight", bm
else 
print*, "obese",bm
end if
print*, "---------------------------------"
print*,""
print*, "Do you want to continue? Press y for yes and n for no"
read*,      ask
if (ask/="y" .and. ask/="Y") then
print*, 'Program exited succesfully'
exit
end if
print*, "---------------------------------"
print*,""
end do
end

subroutine formula(bm,w,h)
implicit none
real,intent(in):: h, w
real, intent(out)::bm
bm = w/(h**2)
end subroutine
