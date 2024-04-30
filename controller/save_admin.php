<?php

require('../db/database.php');

// print_r($_POST);

$username = $_POST['username'];
$password = $_POST['password'];
$jk = $_POST['jk'];
$status = $_POST['status'];


$db = new database();


$db->query('INSERT iNTO admins (username,password,jk,status) VALUES (:username,:password,:jk,:status)');

$db->bind(':username',$username);
$db->bind(':password',MD5($password));
$db->bind(':jk',$jk);
$db->bind(':status',$status);

$db->execute();

header("Location: ../data_admin.php");