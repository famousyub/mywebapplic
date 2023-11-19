<?php
 include('connection.php');

 $name=$_POST['name'];
 $email=$_POST['email'];
 $password=$_POST['password'];
  
 $insert="INSERT INTO form (c_id,c_name,c_email,c_password) 
 VALUES('NULL','$name','$email','$password')";
$result=mysqli_query($con,$insert);
      
  if ($result)
    {
    echo "Successfully Added";
    }
    else
    {
      echo "Error!!Something is wrong";
    }
?>