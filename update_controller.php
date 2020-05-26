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
	
	if (isset($_POST["submit"]))
	{
		
		if(empty($spid))
		{
			echo "<font color='red'>***YOU MUST FILL ALL DATA FIELDS.***</font><br/><br/>";
		}	
		
		if(empty($sca))
		{
			echo "<font color='red'>***YOU MUST FILL ALL DATA FIELDS.***</font><br/><br/>";
		}
		
		if(empty($sma))
		{
			echo "<font color='red'>***YOU MUST FILL ALL DATA FIELDS.***</font><br/><br/>";
		}
		
		if(empty($sep))
		{
			echo "<font color='red'>***YOU MUST FILL ALL DATA FIELDS.***</font><br/><br/>";
		}
		
		else
		{	
			$query = "SELECT * FROM end_product WHERE ProductID = '". mysqli_real_escape_string($conn,$spid) ."'";
			$result = mysqli_query($conn,$query);
			
			
			if (mysqli_num_rows($result)) 
			{
				$sql = "UPDATE end_product SET CommercialApplication='".$sca."',CompostMaterial='".$sma."',EPOrderID='".$sep."' WHERE ProductID='".$spid."'";
				
				if(mysqli_query($conn, $sql))
				{
					echo "NEW RECORD ADDED SUCCESSFULLY IN End Product TABLE"; echo'</br>';
				}
				
				else
				{
					echo "Error updating record: " . mysqli_error($conn);
				}
			} 
			
			else 
			{
				echo "<font color='red'>***NO MATCH FOR ProductID IN END Product TABLE.***</font><br/><br/>";
				die();
			}
		}
	}	
}	

mysqli_close($conn);
?>
