<?php
include"conexion.php";
function agregar_usuario(){
  
  $correo= $_POST['correo'];
  $nombre=$_POST['nombre'];
  
  $conn=conectar();
  $sql="INSERT INTO `usuario`(`CORREO`, `NOMBRE`) VALUES ('".$correo."','".$nombre."')";
  $result = $conn->query($sql);
  mysqli_close($conn);
  echo $resultado='ok';
  
}

if(isset($_POST['funcion']) && !empty($_POST['funcion'])) {
    $action = $_POST['funcion'];
    switch($action) {
        case 'addpc': agregar_usuario(); break;
    }
}?>