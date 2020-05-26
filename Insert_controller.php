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
	$spid = filter_input(INPUT_POST,'Pid');
	$sca = filter_input(INPUT_POST,'CApplication');
	$sma = filter_input(INPUT_POST,'Material');
	$sep = filter_input(INPUT_POST,'EPOrderID');
	
	//echo ".$spid.";
	//echo ".$sca.";
	//echo ".$sma.";
	//echo ".$sep.";
	
	if (isset($_POST["submit"]))
	{	

		if(empty($spid))
		{
			echo "<font color='red'>***YOU MUST FILL ALL THE DATA FIELD1.***</font><br/><br/>";
		}

		if(empty($sca))
		{
			echo "<font color='red'>***YOU MUST FILL ALL THE DATA FIELD2.***</font><br/><br/>";
		}

		if(empty($sma))
		{
			echo "<font color='red'>***YOU MUST FILL ALL THE DATA FIELD3.***</font><br/><br/>";
		}

		if(empty($sep))
		{
			echo "<font color='red'>***YOU MUST FILL ALL THE DATA FIELD4.***</font><br/><br/>";
		}	
		
		else
		{	
			$query1 = "SELECT * FROM warehouse WHERE OrderID = '". mysqli_real_escape_string($conn,$sep) ."'";
			$result1 = mysqli_query($conn,$query1);
			
			if (mysqli_num_rows($result1)) 
			{
			
				$query = "INSERT INTO end_product(ProductID, CommercialApplication, CompostMaterial, EPOrderID)
				values('$spid','$sca','$sma','$sep')";
				
				if($conn->query($query))
				{
					echo "NEW RECORD ADDED SUCCESSFULLY INTO THE END_PRODUCT TABLE"; echo'</br>';
				}
				
				else
				{
					echo "Error updating record: " . mysqli_error($conn);
				}	
			}
			
			else 
			{
				echo "<font color='red'>***NO MATCH FOR OrderID IN WAREHOUSE TABLE.***</font><br/><br/>";
				die();
			}
		}
	}	
}

mysqli_close($conn);
?>