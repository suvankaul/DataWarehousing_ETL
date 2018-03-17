<?php
include 'transform.php';

 $conn=mysql_connect("localhost","root","");
 $db=mysql_select_db("db2",$conn);
$query = "CREATE TABLE warehouse(
    mainid INT PRIMARY KEY AUTO_INCREMENT,
    id INT,
    name VARCHAR(30),
    gender VARCHAR(30),
    couponCode VARCHAR(70),
    custType VARCHAR(30)
)";
 $result=mysql_query($query,$conn);
 for($i=0;$i<$c;$i++)
 {
 	$queryins="INSERT into warehouse(id,name,gender,couponCode,custType) VALUES('$id[$i]','$fname[$i]','$gender[$i]','$coupon_code[$i]','$no_of_orders[$i]')";
 	$result=mysql_query($queryins,$conn);
 }