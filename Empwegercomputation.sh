isfullTime=1
isPartTime=2
workingHr=0
perHrSalary=20
MonthlyWage=0
day=0
while [ $day -le 20 ]
do
        check=$(($RANDOM%3))
        if [ $check -eq $isfullTime ]
        then
                workingHr=8
        elif [ $check -eq $isPartTime ]
        then
                workingHr=8
        else
                workingHr=0
        fi

        MonthlyWage=$(($MonthlyWage+($workingHr*$perHrSalary)))
        ((day++))
done
echo " Employee Monthly Wage =" $MonthlyWage
