isPartTime=1
isfullTime=2
totalSalary=0
empRatePerHr=20
numWorkingDays=0
hrcheck=0
while [ $hrcheck -le 100 ] || [  $numWorkingDays -le 20 ]
do
        empCheck=$((RANDOM%3));
                case $empCheck in
                        $isfullTime)
                                empHr=8
                                ;;
                        $isPartTime)
                                empHr=4
                                ;;
                        *)
                        empHr=0
                                ;;
                esac
      hrcheck=$(($hrcheck+$empHr))
      salary=$(($empHr*$empRatePerHr))
      Dailywage[$numWorkingDays]=$salary
      totalSalary=$(($totalSalary+$salary))
       totalwage[$numWorkingDays]=$totalSalary
      ((numWorkingDays++))
done
echo "Total salay ="${totalwage[@]}
echo "Daily salary="${Dailywage[@]}

