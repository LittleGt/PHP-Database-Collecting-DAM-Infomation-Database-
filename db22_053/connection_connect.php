<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db22_050";


$conn = new mysqli($servername, $username, $password);
mysqli_query( $conn, "SET NAMES UTF8" );
if($conn->connect_error){
    die("Connection failed: ".$conn->connect_error);
}
if(!$conn->select_db($dbname)){
    die("Connection failed: ".$conn->connect_error);
}
?>