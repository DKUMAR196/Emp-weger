

isFulltime=1
isParttime=2
PartTimeWage=0
FullDayWage=0
WageprHr=20
check=$(shuf -i 0-2 -n 1)

if [ $check -eq $isFulltime ]
then
   FullDayHr=8
   FullDayWage=$(($FullDayHr*$WageprHr))
   echo "Full Day Wage =" $FullDayWage
elif [ $check -eq $isParttime ]
then
   PartTimeHr=8
   PartTimeWage=$(($WageprHr*$PartTimeHr))
   echo "Part Time Wage =" $PartTimeWage
else
   echo "Employee is Absent"
fi
