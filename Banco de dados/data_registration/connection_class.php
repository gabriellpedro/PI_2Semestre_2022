<?php

class Database_Connection
{
    public $servername;
    public $username;
    public $password;
    public $database_name;
    public $connection;
    public $command;

    public function __construct(string $servername, string $username, string $password, string $database_name)
    {
        if (is_string($servername))
        {
            $this->servername = $servername;
        }
        if (is_string($username))
        {
            $this->username = $username;
        }
        if (is_string($password))
        {
            $this->password = $password;
        } 
        if (is_string($database_name))
        {
            $this->database_name = $database_name;
        }
        $this->connection = new mysqli($this->servername, $this->username, $this->password, $this->database_name);

        if($this->connection->connect_error)
        {
            die("Connection failed: " . $this->connection->connect_error);
        }else
        {
            echo "Connected successfully with Database!<br>";
        }
    }

    public function inserting_occurrence(string $isbn10, string $isbn13, string $category, string $publisher, string $name, string $creators, int $pages)
    {
        $current_timestamp = time();
        echo $current_timestamp;
        $this->command = "INSERT INTO books(created_at, updated_at, isbn10, isbn13, category, publisher, name, creators, pages) VALUES(" . $current_timestamp . "," . $current_timestamp . ",'" . $isbn10 ."','" . $isbn13 . "','" . $category . "','" . $publisher . "','" . $name . "','" . $creators . "'," . $pages . ");";
            echo $isbn10;
        if($this->connection->query($this->command) == TRUE)
        {
            echo "<br> Record updated successfully";
        } else
        {
            echo "Error updating record: " . $this->connection->error;
        }
    }
}
?>