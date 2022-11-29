<?php
	require_once('connection_information.php');
	require_once('connection_class.php');

	$database_connection = new Database_Connection($servername, $username, $password, $dbname);

	$csv_file = fopen("saved_books_occurrences.csv", "r");
	if ($csv_file !== FALSE) 
	{
	    print "<PRE>";
	    while (! feof($csv_file)) 
	    {
	        $data = fgetcsv($csv_file, 1000, ",");
	        if (! empty($data)) 
	        {
		        $database_connection->inserting_occurrence
				(
					$data[0], $data[1], $data[2], $data[3], $data[4], $data[5], $data[6]
				);
	    	}
		}
	}
	fclose($csv_file);
?>