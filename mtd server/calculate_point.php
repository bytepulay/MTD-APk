<?php

require "init.php";

$sale_qualtity = 0;
$sale_pointEight = 0;
$order_point=0;
$total_point=0;

$customer_id = $_GET["user_name"];


$sql1 = "select * from sale_invoices,customers where sale_invoices.customer_id = $customer_id";
$result1 = mysqli_query($con,$sql1);

// $sql = "select * from order_invoices where order_invoices.customer_id = $customer_id";
// $result = mysqli_query($con,$sql);



if (mysqli_num_rows($result1)>0){
    while ($row = mysqli_fetch_assoc($result1)){
    
       $qty=$row['qty'];
       $point_eight=$row['point_eight'];
      // echo  $debitKyat = $row['debit_kyat'];
      // echo  $debitPal = $row['debit_pal'];
      //  echo $debitYae = $row['debit_yae'];
       $sale_qualtity=$sale_qualtity+$qty;
     $sale_pointEight=$sale_pointEight+$point_eight;
     
       
    }
 
} 
    
//     if (mysqli_num_rows($result)>0){
//   // $status = "ok";
//     $response = array();
//     while ($row = mysqli_fetch_assoc($result)){
        
//       $qty=$row['total_point'];
//       $order_point=$order_point+$qty;
       
//     }
    
// }


 // echo json_encode(array("qualtity"=>$sale_qualtity,"point_eight"=>$sale_pointEight,"debit_kyat"=>$debitKyat,"debit_yae"=>$debitYae,"debit_pal"=>$debitPal));

echo json_encode(array("qualtity"=>$sale_qualtity,"point_eight"=>$sale_pointEight));


  

mysqli_close($con);

