<?php 
    
    require "init.php";
    
    if($con){
        //$title = $_POST['title'];
        $customer_name = $_POST["name"];
       $user_name =$_POST["user_name"];
        $shop_name =$_POST["shop_name"];
        $phone_number =$_POST["phone_number"];
        $address = $_POST["address"];
        $dob =$_POST["dob"];
        $nrc = $_POST["nrc"];
        $town_ship =$_POST["town_ship"];

        $image =$_POST['image'];
        
        $upload_path ="uploads/$user_name.jpg";
      //  $sql = "insert into imageinfo(title,path) values('$title','$upload_path')";
        
       // $sql = "INSERT INTO `imageinfo`(`title`, `path`) VALUES ('$title','$upload_path')";
       
       $sql = "INSERT INTO `customers`(`name`, `user_name`, `shop_name`, `phone_number`, `address`, `dob`, `nrc`, `town`, `path`) VALUES ('$customer_name','$user_name','$shop_name',' $phone_number','$addres',' $dob','$nrc', '$town_ship',
       '$upload_path')";
        
        if(mysqli_query($con,$sql)){
            file_put_contents($upload_path,base64_decode($image));
            echo json_encode(array('response'=>"image upload ssuccessfully...."));
        }
        else
        {
            echo json_encode(array('response'=>"image upload failed...."));
        }
        
        mysqli_close($con);
    }
    
    ?>