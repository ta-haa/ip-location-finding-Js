<?php
$conn=mysqli_connect("localhost","root","","ipadres");
$conn->query("SET CHARACTER SET utf8");
$conn->query("set names 'utf8'");
if(!$conn)
{
    echo "bağlantı hatası".mysqli_connect_error();
}


?>