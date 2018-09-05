<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$db='recommender';
$err_level = error_reporting(0);
$link = mysqli_connect($dbhost, $dbuser, $dbpass,$db);
    if (!$link)
        {die("Could not connect to Server");}
        error_reporting($err_level); 
?>
