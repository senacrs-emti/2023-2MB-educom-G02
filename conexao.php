<?php
$servername = "localhost";
$database = "enem";
$username = "root";
$password = "";
// Create connection
$conexao = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conexao) {
    die("Connection failed: " . mysqli_connect_error());
}
?>