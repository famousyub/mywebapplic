<?php
 include('connection.php');
 
 $uid=$_POST['uid'];
 $uname=$_POST['uname'];
 $uemail=$_POST['uemail'];
 $upass=$_POST['upassword'];
 
 $update="UPDATE form SET c_name='$uname', c_email='$uemail', c_password='$upass'
   WHERE c_id='".$uid."'";

   $query=mysqli_query($con,$update);
   if ($query) 
    {
   	 echo "Successfully Updated";
    }
    else
    {
    	echo "Error!!Something is Wrong";
    }
?>