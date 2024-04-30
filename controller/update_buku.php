<?php

// menambhkabn class databese
require('../db/database.php');
$db = new Database();

//mengambil data no menggunakan POST
$no=$_POST['no_induk'];
$judul=$_POST['judul'];
$penulis=$_POST['penulis'];
$tahun=$_POST['tahun'];
$penerbit=$_POST['penerbit'];
$subject=$_POST['subject'];

$photo = null;

if(isset($_FILES["image"])){
    $file = $_FILES['image']['tmp_name'];

    if ($file) {
        $photo = @base64_encode(file_get_contents($file));
    }
}

if($photo) {
    // buat query untuk melakukan UPDATE data di table
    $db->query('UPDATE books SET judul = :judul,penulis = :penulis,tahun = :tahun,penerbit = :penerbit,subjek = :subjek, photo = :photo WHERE no_induk = :no_induk');

    // binding data query dengan variable
    $db->bind(':no_induk', $no);
    $db->bind(':judul', $judul);
    $db->bind(':penulis', $penulis);
    $db->bind(':tahun', $tahun);
    $db->bind(':penerbit', $penerbit);
    $db->bind(':subjek', $subject);
    $db->bind(':photo', $photo);

} else{
    // buat query untuk melakukan UPDATE data di table
    $db->query('UPDATE books SET judul = :judul,penulis = :penulis,tahun = :tahun,penerbit = :penerbit,subjek = :subjek WHERE no_induk = :no_induk');

    // binding data query dengan variable
    $db->bind(':no_induk', $no);
    $db->bind(':judul', $judul);
    $db->bind(':penulis', $penulis);
    $db->bind(':tahun', $tahun);
    $db->bind(':penerbit', $penerbit);
    $db->bind(':subjek', $subject);
}


// execute query ke database
$db->execute();

//kembalikan ke halaman data_buku.php
header("Location:../data_buku.php");


