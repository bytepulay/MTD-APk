<?php 
    require "init.php";
     $user_name =$_POST["user_name"];
            $sql1 = "SELECT * FROM `sales` WHERE user_name='$user_name'" ;
              $result1 =mysqli_query($con,$sql1);
              $row = mysqli_fetch_assoc($result1);
             echo json_encode(array("profile"=>$row["profile"]));
        mysqli_close($con);
    
    ?>