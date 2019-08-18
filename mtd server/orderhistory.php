<?php

require "init.php";

$user_name = $_GET["user_name"];

$sql1 = "select * from order_invoices JOIN customers ON order_invoices.customer_id = customers.customer_id where sale_user_name = '$user_name'or customers.user_name='$user_name' ORDER BY order_date DESC";
$result1 = mysqli_query($con,$sql1);


if (mysqli_num_rows($result1)>0){
   // $status = "ok";
    $response = array();


   while ($row = mysqli_fetch_assoc($result1))
    {
        array_push($response,array("response"=>'ok',"sale_user_name"=>$row['sale_user_name'],"id"=>$row['id'],"user_name"=>$row['sale_user_name'],"voucher_number"=>$row['voucher_number'],"order_date"=>$row['order_date'],"new_total_kyat"=>$row['total_kyat'],"new_total_pal"=>$row['total_pal'],"new_total_yae"=>$row['total_yae'],"total_qualtity"=>$row['qty'],
            "point_eight"=>$row['point_eight'],"kyat"=>$row['kyat'],"pal"=>$row['pal'],"yae"=>$row['yae'],"gram"=>$row['gram'],"cupon_code"=>$row['cupon_code'],"total_ayot_kyat"=>$row['total_ayot_kyat'],
            "total_ayot_pal"=>$row['total_ayot_pal'],"total_ayot_yae"=>$row['total_ayot_yae'],"customer_id"=>$row['customer_id'],"previous_remain_kyat"=>$row['previous_remain_kyat'],"previous_remain_pal"=>$row["previous_remain_pal"],"previous_remain_yae"=>$row['previous_remain_yae'],"buy_debit_kyat"=>$row['buy_debit_kyat'],
            "buy_debit_pal"=>$row['buy_debit_pal'],"buy_debit_yae"=>$row['buy_debit_yae'],
            "payment_kyat"=>$row['payment_kyat'],"payment_pal"=>$row["payment_pal"],"payment_yae"=>$row['payment_yae'],"now_remain_kyat"=>$row['now_remain_kyat'],
            "now_remain_pal"=>$row['now_remain_pal'],"now_remain_yae"=>$row['now_remain_yae'],
            "customer_name"=>$row['name'],"customer_user_name"=>$row['user_name'],"customer_shop"=>$row['shop_name'],
            "customer_phone_number"=>$row['phone_number'],"customer_address"=>$row['address'],"customer_dob"=>$row['dob'],"customer_nrc"=>$row['nrc'],"customer_town"=>$row['town']
        ));
    }

    echo json_encode($response);
}
mysqli_close($con);


