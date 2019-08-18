<?php 
    
    require "init.php";
    
    if($con){
       
       $user_name =$_POST["user_name"];
       $extera = "profile";
        $image =$_POST['image'];
        
        echo $extera.$user_name;
        
         $upload_path ="uploads/$extera$user_name.jpg";
   // $sql = "insert into imageinfo(title,path) values('$title','$upload_path')";
        
  $sql = "UPDATE `customers` SET `profile`='$upload_path' WHERE user_name='$user_name'";
       
    //   $sql = "INSERT INTO `customer`(`name`, `user_name`, `shop_name`, `phone_number`, `address`, `dob`, `nrc`, `town`, `path`) VALUES ('$customer_name','$user_name','$shop_name',' $phone_number','$addres',' $dob','$nrc', '$town_ship',
    //   '$upload_path')";
        
        if(mysqli_query($con,$sql)){
            file_put_contents($upload_path,base64_decode($image));
            $sql1 = "SELECT * FROM `customers` WHERE user_name='$user_name'" ;
              $result1 =mysqli_query($con,$sql1);
              $row = mysqli_fetch_assoc($result1);
             echo json_encode(array("profile"=>$row["profile"]));
        }
        else
        {
            echo json_encode(array('response'=>"image upload failed...."));
        }
        
        mysqli_close($con);
    }
    
    ?>