<?php
  include('connection.php');
?>


<!DOCTYPE html>
<html>
<!-- Latest compiled and minified CSS -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script><!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<body>
 
  <div class="container"> 
 
   <div id="dmsg" class="alert alert-success"></div> 
   <!--Start Add user form-->
    <div id="user_form"></div>
    <!--End Add user form-->

    <!--Start User Edit Form-->
    <div id="edit_form"></div>
    <!--End User Edit Form-->


    <!--Start User record Table -->
    <div id="record"></div>
    <!--End User record Table-->
	</div>            
</body>
</html>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</script>


<!--Table Record -->
 <script>
	$(document).ready(function(){
      setInterval(function(){
         $.ajax({
         	  type:'get',
         	  url:'table.php',
              async:false,
              success:function(data)
              {
              	$('#record').html(data);
              }
         });
        }, 1000);  
	});
</script>
<!--End Table Record-->




<!--Delete Record-->
 <script>
	$(document).on('click','#delete_record',function(e){
         e.preventDefault();
         var did = $(this).attr('data_r');
         $.ajax({
         	   type:'post',
         	   url:'delete.php',
         	   data:{did:did},
         	   success:function(data)
         	   {
         	   	 $('#dmsg').html(data);
         	   }
         })
	});
</script>
<!--Delete Record--> 

<script>
  $(document).on('click','#add',function(e){
          e.preventDefault();
          $.ajax({
                 type:'get',
                 url:'user_form.php',
                 success:function(data)
                 {   
                   $('#user_form').html(data);
                    $('#editform').hide();
                 }
          });
  });
</script>

<script>
  $(document).on('submit','.userform',function(e){
         e.preventDefault();
         $.ajax({
              type:'post',
              url:'insert_user.php',
              data:$('#userform').serialize(),
              success:function(data)
              { 
                $('#dmsg').html(data);
                $('#userform')[0].reset();
              }
         });
  });
</script>


<script>
  $(document).on('click','#edit_user',function(e){
      e.preventDefault();
      var did = $(this).attr('edit_r');
        $.ajax({
             type:'post',
             url:'edit_user.php',
             data:{did:did},
             success:function(data)
             {
               $('#edit_form').html(data);
               $('#userform').hide();
             }
        });
  });
</script>


 <script>
   $(document).on('submit','.editform',function(e){
       e.preventDefault();
       $.ajax({
            type:'post',
            url:'update_user.php',
            data:$('#editform').serialize(),
            success:function(data)
            {
              $('#dmsg').html(data);
            }
       })
   });
</script>


