
clear
banner Student Management
echo "1.Login"
echo "2.About"
echo "3.Exit"
stud_manage() {
   clear
   banner Student Management
   echo "1.View The Database"
   echo "2.View Specific Records"
   echo "3.Add New Records"
   echo "4.Delete Records"
   echo "5.Exit"
   echo "Enter Your Choice:"
   read choice
     case $choice in 
         1)cat $db
           echo "Do you Want to continue?"
           read i
           if [ $i == "y" ]
           then
              clear
             banner Student Management
              stud_manage
            fi;;
         2)echo "Enter id:"
           read id 
             grep -i "$id" $db
             echo "Do you want to continue?"
             read i
             if [ $i == "y" ]
             then 
                Clear
               banner Student Management
                stud_manage
                fi;;
                
           3)echo "Enter New Student ID:"
             read sid
             echo "Enter name:"
             read snm
             echo "Enter designation:"
             read sdes
             echo "Enter institution name:"
             read sins
             echo "$sid  $snm  $sdes  $sins ">>$db
             echo "Do you want to continue?"
             read i
             if [ $i == "y" ]
             then
                clear
               banner Student Management
                stud_manage
             fi;;
             
            4)echo "Enter Id:"
              read id
            grep -v "$sid" $db > tmpfile && mv tmpfile $db
              echo "Record Deleted."
             cat $db
             echo "Do you want to continue?"
             read i
             if [ $i == "y" ]
             then
                 clear
                
             fi;;
             
       esac
}
echo "Choose 1/2/3"
read choose
 if [ $choose -eq 1 ];
 then
    banner Login
    echo "Enter Username:"
    read user
    echo "Enter Password:"
    read pass
     if [ $user == "admin" ] && [ $pass == "12345" ];
     then
        echo "Login Successful!"
        echo "Enter name of database:"
        read db
        stud_manage
     else
     echo "Login Failed!"
     fi
  elif [ $choose -eq 2 ];
  then  	
  banner Abidur Rahman Khan
  else
  exit
fi