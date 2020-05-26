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
	die("Connection failed" . mysqli_connect_error());
}	

//start processing

else
{
	$spid = filter_input(INPUT_POST,'Pid');
	
	if (isset($_POST["submit"]))
	{	

		if(empty($spid))
		{
			echo "<font color='red'>***YOU MUST FILL THE DATA FIELD.***</font><br/><br/>";
		}	
		
		else
		{	
			$query = "SELECT * FROM end_product WHERE ProductID = '". mysqli_real_escape_string($conn,$spid) ."'";
			$result = mysqli_query($conn,$query);
			
			if (mysqli_num_rows($result) == 1) 
			{
				$row = mysqli_fetch_assoc($result);
				$cpid = $spid;
				$query1 = "SELECT * FROM buyer_endproduct WHERE BEProductID = '". mysqli_real_escape_string($conn,$cpid) ."'";
				$result1 = mysqli_query($conn,$query1);
				
				if (mysqli_num_rows($result1) == 1) 
				{
					echo "<font color='red'>***MATCHED FOR ProductID IN Buyer_EndProduct TABLE.***</font><br/><br/>";
					echo "<font color='red'>***THE DATA FROM SELECTED ProductID is NOT DELETED..***</font><br/><br/>";
					die();
				}
				
				else 
				{
					echo "<font color='red'>***THE ProductID DOES NOT EXIST IN THE Buyer_EndProduct TABLE.***</font><br/><br/>";
					
					$query2 = "DELETE FROM end_product WHERE end_product.ProductID = '$cpid'";
				 	
					if (mysqli_query($conn, $query2))
					{
						echo "Deleted successfully in end_product table, the data is no longer in the database.</font><br/><br/>";
					}

					
					else 
					{
						echo "<font color='red'>***ERROR IN DELETING DATA FROM END_PRODUCT TABLE***</font><br/><br/>";
						die();
					}	
				}
			} 
			
			else 
			{
				echo "<font color='red'>***NO MATCH FOR ProductID IN END_PRODUCT TABLE.***</font><br/><br/>";
				die();
			}
		}
	}	
}	

mysqli_close($conn);
?>