<?php
    // incluimos la conexion a la DB desde un php externo 
    include('conexion.php');
    $us = $_POST['user'];
    $pa = $_POST['password'];
    // queri para encontrar usuario y contraseña 
    $query = "SELECT urs_name,pss FROM `urs` WHERE urs_name = '$us' AND pss = '$pa'";
    // conexion y generar consulta
    $insert = $conexion->query($query);

    if(isset($_POST['login'])){
        session_start();
        // resultado de query
        if (!$insert) {
            $message .= 'Whole query: ' . $query;
            echo($message);
        }else{
            $count = mysqli_num_rows($insert);
          if($count == 1) {

             echo 'welcome ' . $us;
            //  ingresar a una pestaña
            header("location: ../Menú-Eleccion.html");
            exit;
            
          }else {
            header("location: ../html/login.html");
            exit;
          }
        }
    
      }
?>
