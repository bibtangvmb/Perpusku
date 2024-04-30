<?php

// Start The Session
session_start();

if(@$_SESSION['islogin']){

} else {
    header("Location:login.php");
    exit();
}