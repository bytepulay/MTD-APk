<?php 
    
    require "init.php";
    
  
       $user_name =$_POST["user_name"];
       
        $image =$_POST['image'];
       
         $upload_path ="uploads/$user_name.jpg";
        
  $sql = "UPDATE `sales` SET `profile`='$upload_path' WHERE user_name='$user_name'";
        $result =mysqli_query($con,$sql);
        if($result){
            file_put_contents($upload_path,base64_decode($image));
            $sql1 = "SELECT * FROM `sales` WHERE user_name='$user_name'" ;
              $result1 =mysqli_query($con,$sql1);
              $row = mysqli_fetch_assoc($result1);
             echo json_encode(array("profile"=>$row["profile"]));
        }

            
        
        mysqli_close($con);
    
    
    ?>