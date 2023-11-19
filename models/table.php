<?php
  include('connection.php');
  $select="SELECT * FROM form";
  $result=mysqli_query($con,$select);
?>

<div class="col-sm-12">
  <h1>All Record Table</h1>
	 <table class="table table-stripped">
   	  <tr>
       <td>Name</td>
       <td>Email</td>
       <td>Password</td>
       <td>action</td>
   	  </tr>
<?php
while ($rows=mysqli_fetch_array($result)) 
{
	?>
	  <tr> 
       <td><?php echo $rows['c_name'];?></td>
       <td><?php echo $rows['c_email'];?></td>
       <td><?php echo $rows['c_password'];?></td>
       <td>
    <a class="btn btn-danger" data_r="<?php echo $rows['c_id'];?>" 
     id="delete_record">Delete</a>
  	<a id="add" class="btn btn-info add">add</a> 
  <a class="btn btn-success" id="edit_user" edit_r="<?php echo $rows['c_id'];?>">Edit</a>

       </td>

      </tr>
   <?php
}
?>

   </table>	
	</div>