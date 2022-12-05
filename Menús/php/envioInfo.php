<?php
    // incluimos la conexion a la DB desde un php externo 
    include('conexion.php');
    $us = $_POST['user'];
    $pa = $_POST['password'];
    $roll = 1;
    // queri para encontrar usuario y contraseña 
    $query = "SELECT nom,pss,id_roll FROM `admin` WHERE nom = '$us' AND pss = '$pa' AND id_roll = '$roll'";
    
    
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

          
            if($count==1){
             echo 'welcome ' . $us;
            //  ingresar a una pestaña
            header("location: ../niveles.html");
            exit;
            
          }else {
          header("location: ../index.html");
          exit;
        }
        }
    
      }



