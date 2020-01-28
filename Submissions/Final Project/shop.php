<!DOCTYPE html>
<html>
<head>
	<title>ARCB Shop</title>
</head>

<body>
	<?php
		//Step 1:  Create a database connection
		$dbhost = "localhost";
		$dbuser = "root";
		$dbpassword = "";
		$dbname = "ref_prod";

		$connection = mysqli_connect($dbhost,$dbuser,$dbpassword,$dbname);
		
		//Test if connection occoured
		if(mysqli_connect_errno()){
			die("DB connection failed: " .
				mysqli_connect_error() .
					" (" . mysqli_connect_errno() . ")"
					);
		}

		if (!$connection)
			{
				die('Could not connect: ' . mysqli_error());
			}
		
		//Step 2: Perform Database Query

		$result = mysqli_query($connection,"SELECT * FROM ITEMS");
		
		//Step 3: User returned data
		echo "<table border='1' id='myTable'>
		<tr>
		<th>Product Id</th>
		<th>Product Name</th>
		<th>Description</th>
        <th>Cost per Item</th>
		</tr>";
		
		while($row = mysqli_fetch_array($result))
		{
			echo "<tr>";
			echo "<td>" . $row['PROD_ID'] . "</td>";
			echo "<td>" . $row['PROD_NAME'] . "</td>";
			echo "<td>" . $row['PROD_DESCR'] ."</td>";
            echo "<td>" . $row['PROD_COST'] ."</td>";
			echo "</tr>";
		}
		
		echo "</table>";
		
		//4.  Release returned data 
		mysqli_free_result($result);

		//5.  Close database connection
		mysqli_close($connection);	
	?>
</body>
</html>