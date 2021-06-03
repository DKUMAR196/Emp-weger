check=$((RANDOM%2))
WageprHr=20

if [ $check -eq 1 ]
then
   FullDayHr=8
   DailyWage=$(($WageprHr*FullDayHr))
   echo "Employee per Day wage =" $DailyWage
else
   echo "Employee is Absent"
fi
