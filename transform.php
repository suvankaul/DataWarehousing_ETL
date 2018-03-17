<?php
include 'extract.php';
for($i=0;$i<$c;$i++)
{
	if($gender[$i]=="m") 
		$gender[$i]="male";
	if($gender[$i]=="f")
		$gender[$i]="female";
	if($no_of_orders[$i]>20)
		$no_of_orders[$i]="Prime";
	else 
	if($no_of_orders[$i]<10)
		$no_of_orders[$i]="Minor";
	else
	if($no_of_orders[$i]>=10&&$no_of_orders[$i]<=20)
		$no_of_orders[$i]="Medium";
}
?>