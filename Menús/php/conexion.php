<?php
//  conexion de servidor 
    $server ='localhost';
	$user = 'root';
	$password ='';
	$database = 'cifunhi';
// conexion 
    $conexion = new mysqli($server,$user,$password,$database );
    if (mysqli_connect_errno()){
        // error 
        echo 'No', mysqli_connect_error();
        exit();

    }else {
        // echo'goood';
    }
     
    
?>
