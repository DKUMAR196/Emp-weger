isFulltime=1
isParttime=2
PartTimeWage=0
FullDayWage=0
WageprHr=20
check=$(shuf -i 0-2 -n 1)
case $check in
   1)

   FullDayHr=8
   FullDayWage=$(($FullDayHr*$WageprHr))
   echo "Full Day Wage =" $FullDayWage
   ;;


   2)

   PartTimeHr=8
   PartTimeWage=$(($WageprHr*$PartTimeHr))
   echo "Part Time Wage =" $PartTimeWage
   ;;

   0)
   echo "Employee is Absent"
esac
