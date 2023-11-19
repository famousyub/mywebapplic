<?php
   include('connection.php');

    $did=$_POST['did'];
    $delete="DELETE  FROM form WHERE c_id='".$did."'";
    
    $result=mysqli_query($con,$delete);

    if ($result)
    {
   	echo "Successfully Deleted";
    }
    else
    {
   	  echo "Something is Wrong try again";
    }
 ?>