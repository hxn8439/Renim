<?php
//Created by: Hamilton Nguyen, Kyra Belgica,Utibeabasi Obot, Jaehee Seh
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname="renim";

//Create Connection
$conn = mysqli_connect($host, $dbusername, $dbpassword, $dbname);

//check Connection
if(!$conn)
{
	die("Connection failed");
}	

//start processing

else
{
	$scid = filter_input(INPUT_POST,'cid');
	
	if (isset($_POST["submit"]))
	{	

		if(empty($scid))
		{
			echo "<font color='red'>***YOU MUST FILL THE DATA FIELD.***</font><br/><br/>";
		}	
		
		else
		{	
			$query = "SELECT * FROM customer WHERE CustomerID = '". mysqli_real_escape_string($conn,$scid) ."'";
			$result = mysqli_query($conn,$query);
			
			if (mysqli_num_rows($result) == 1) 
			{
				$row = mysqli_fetch_assoc($result);
			
				$first_name = $row["FName"];
				$last_name = $row["FName"];
				$items = $row["NoOfItems"];
				
				$query1 = "SELECT * FROM retail_company WHERE RCCustomerID = '". mysqli_real_escape_string($conn,$scid) ."'";
				$result1 = mysqli_query($conn,$query1);
				
				if (mysqli_num_rows($result1) == 1) 
				{
					$row1 = mysqli_fetch_assoc($result1);
					$retail = $row1["Name"];
					
					echo "-Customer Name: " .$row["FName"]. " - Last Name: ".$row["FName"]." - NumberOfReturn Items: " .$row["NoOfItems"]." -RetailName: ".$row1["Name"]."";
					
				}
				
				else 
				{
					echo "<font color='red'>***NO MATCH FOR RCCustomerID IN Retail Company TABLE.***</font><br/><br/>";
					echo "-Customer Name: " .first_name. " - Last Name: ".last_name." - NumberOfReturn Items: " .items."";
					die();
				}
			} 
			
			else 
			{
				echo "<font color='red'>***NO MATCH FOR CustomerID IN Customer TABLE.***</font><br/><br/>";
				die();
			}
		}
	}	
}	

mysqli_close($conn);
?>