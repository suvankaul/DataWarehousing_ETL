<?php
 $c=0;
 //MYSQL
 $conn=mysql_connect("localhost","root","");
 $db=mysql_select_db("myadmindb",$conn);
 $query="select * from Customer";
 $result=mysql_query($query,$conn);
 while($row=mysql_fetch_array($result))
 {
 	$id[$c]=$row['id'];
 	$fname[$c]=$row['fname'];
 	$gender[$c]=$row['gender'];
 	$coupon_code[$c]=$row['coupon_code'];
 	$no_of_orders[$c]=$row['no_of_orders'];
 	$c=$c+1;
 }
 mysql_close($conn);
//TEXT
 $file = fopen("textdb.txt","r");
 while (!feof($file)) 
 {
    $buffer = fgets($file,4096); 
    $arr=explode("|",$buffer);
    $id[$c]=$arr[0];
 	$fname[$c]=$arr[1];
 	$gender[$c]=$arr[2];
 	$coupon_code[$c]=$arr[3];
 	$no_of_orders[$c]=$arr[4];
 	$c=$c+1;
 }
 fclose($file);

 //CSV
$handle = fopen("csvdb.csv", "r");
    while (!feof($handle)) 
    {
    $data = fgetcsv($handle,1000,",");
	$arr=$data;
    $id[$c]=$arr[0];
 	$fname[$c]=$arr[1];
 	$gender[$c]=$arr[2];
 	$coupon_code[$c]=$arr[3];
 	$no_of_orders[$c]=$arr[4];
 	$c=$c+1;
    }
    
    fclose($handle);



 //ORACLE
/*$db = "(DESCRIPTION=(ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 192.168.1.34)(PORT = 1521)))(CONNECT_DATA=(SID=orcl)))" ;
$conn = oci_connect("userid","pass", $db);
$stid = oci_parse($conn, "SELECT * FROM custoracl");
oci_execute($stid);
while (($row = oci_fetch_array($stid, OCI_BOTH)) != false) {
    
    $id[$c]=$row['ID'];
    $fname[$c]=$row['FNAME'];
    $gender[$c]=$row['GENDER'];
    $coupon_code[$c]=$row['COUPON_CODE'];
    $no_of_orders[$c]=$row['NO_OF_ORDERS'];
}
oci_free_statement($stid);
oci_close($conn);

*/
?>