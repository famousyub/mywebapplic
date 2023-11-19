<?php
include('connection.php');

 $did=$_POST['did'];
 $select="SELECT * FROM form WHERE c_id='".$did."'";
 $result=mysqli_query($con,$select);
 while ($rows=mysqli_fetch_array($result)) 
 {
      $userid=$rows['c_id'];
      $name=$rows['c_name'];
      $email=$rows['c_email'];
      $password=$rows['c_password'];
 }
?>


    <form class="editform" id="editform">
      <h1>User Edit Record</h1>
  
     
     <input type="hidden" name="uid" value="<?php echo $userid;?>">
   	<div class="form-group">
   	 <input type="text" name="uname" value="<?php echo $name;?>" class="form-control">
   	</div>

   	<div class="form-group">
   	<input type="email" name="uemail" value="<?php echo $email;?>" class="form-control">
   	</div>

   	<div class="form-group">
   	<input type="password" name="upassword" value="<?php echo $password;?>" class="form-control">
   	</div>

    <div class="form-group">
   	<input type="submit" name="name" value="Update" class="btn btn-success">
   	</div>
   </form>