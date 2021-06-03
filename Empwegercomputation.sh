isPartTime=1
isfullTime=2
totalSalary=0
empRatePerHr=20
numWorkingDays=0
hrcheck=0
getHr() {
   empcheck=$1
   case $empcheck in

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
}
while [ $hrcheck -lt 100 ] || [  $numWorkingDays -lt 20 ]
do
        empCheck=$((RANDOM%3))
         getHr $empCheck

      ((numWorkingDays++))
      hrcheck=$(($hrcheck+$empHr))
      salary=$(($empHr*$empRatePerHr))
      totalSalary=$(($totalSalary+$salary))

done
echo "Total salay ="$totalSalary
echo "Emlpoyee working days = $numWorkingDays and hours = $hrcheck"

