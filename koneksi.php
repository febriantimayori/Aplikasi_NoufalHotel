<?php
$servername = "localhost";
$username   = "root";
$password   = "";
$database   = "my_hotel";

$koneksi = mysqli_connect("localhost","root","","my_hotel");

//cek koneksi
if (mysqli_connect_errno()){
	echo "koneksi database gagal: ". mysqLi_connect_error();
}

	?>