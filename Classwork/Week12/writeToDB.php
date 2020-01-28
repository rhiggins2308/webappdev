<!DOCTYPE html>
<html>
<head>
	<title>Basic Database Connection in PHP</title>
</head>

<body>

	<?php
	
		//Step 1:  Create a database connection
		$dbhost = "localhost";
		$dbuser = "root";
		$dbpassword = "";
		$dbname = "empdept2";

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

		$result = mysqli_query($connection,"SELECT * FROM EMP");
		
		
		
		
		//Step 3: User returned data
		echo "<table border='1' id='myTable'>
		<tr>
		<th>Dept Id</th>
		<th>Dept Name</th>
		<th>Location</th>
		</tr>";
		
		while($row = mysqli_fetch_array($result))
		{
			echo "<tr>";
			echo "<td>" . $row['EMPNO'] . "</td>";
			echo "<td>" . $row['ENAME'] . "</td>";
			echo "<td>" . $row['JOB'] ."</td>";
			echo "</tr>";
		}
		
		echo "</table>";
		
		
		
		//Update Example
		//This will update the EMP table
		//Will look for empno of 7902
		//And update it the ename of the record to 'Testing'

		$sql = "UPDATE emp SET ename='Testing' WHERE empno=7902";

		if (mysqli_query($connection, $sql)) {
			echo "Record updated successfully";
		} else {
			echo "Error updating record: " . mysqli_error($conn);
		}
		
		
		
		
		
		//4.  Release returned data 
		mysqli_free_result($result);

		
		
		//5.  Close database connection
		mysqli_close($connection);
		
		
	?>

</body>
</html>