<?php
include "conexion.php";

///////////////////////////////////////////////////////////////////
///////////funciones para agregar//////////////////////////////////
///////////////////////////////////////////////////////////////////

  function agregar_computador(){
    $correo= $_POST['correo'];
    $dsie= $_POST['dsie'];
    $serie= $_POST['serie'];
    $marca= $_POST['marca'];
    $modelo = $_POST['modelo'];
    $procesador= $_POST['procesador'];
    $hdd= $_POST['hdd'];
    $ram= $_POST['ram'];
    $so= $_POST['so'];
    $conn=conectar();
    $sql="INSERT INTO `computador`(`CORREO`, `DSIE`, `SERIE`, `MARCA`, `MODELO`,`PROCESADOR`,`HDD`,`RAM`,`SO`) VALUES ('".$correo."','".$dsie."','".$serie."','".$marca."','".$modelo."','".$procesador."','".$hdd."','".$ram."','".$so."')";
    $result = $conn->query($sql);
    mysqli_close($conn);
   $resultado='ok';
   echo $resultado;
 }

 function agregar_impresora($correo,$dsie,$serie,$marca,$modelo,$tipo,$multifuncional,$lan,$usb,$wireless,$duplex,$color,$tinta){ 
    $conn=conectar();
    $sql="INSERT INTO `impresora`(`CORREO`, `DSIE`, `SERIE`, `MARCA`, `MODELO`, `TIPO`, `MULTIFUNCIONAL`, `LAN`, `USB`, `WIRELESS`, `DUPLEX`, `COLOR`, `TINTA`) VALUES ('".$correo."','".$dsie."','".$serie."','".$marca."','".$modelo."','".$tipo."','".$multifuncional."','".$lan."','".$usb."','".$wireless."','".$duplex."','".$color."','".$tinta."')";
    $result = $conn->query($sql);
    mysqli_close($conn);
 }

function agregar_telefono($correo,$dsie,$serie,$imei,$marca,$modelo,$hdd,$numero){
  $conn=concetar();
  $sql="INSERT INTO `telefono`(`CORREO`, `DSIE`, `SERIE`, `IMEI`, `MARCA`, `MODELO`, `HDD`, `NUMERO`) VALUES ('".$correo."','".$dsie."','".$serie."','".$imei."','".$marca."','".$modelo."','".$hdd."','".$numero."')";
  $result = $conn->query($sql);
  mysqli_close($conn);
}

function agregar_pantalla($correo,$dsie,$serie,$marca,$modelo,$pulgadas){
  $conn=concetar();
  $sql="INSERT INTO `pantalla`(`CORREO`, `DSIE`, `SERIE`,`MARCA`, `MODELO`, `PULGADAS`) VALUES ('".$correo."','".$dsie."','".$serie."','".$marca."','".$modelo."','".$pulgadas."')";
  $result = $conn->query($sql);
  mysqli_close($conn);
}

function agregar_otros($correo,$dsie,$serie,$marca,$modelo){
  $conn=concetar();
  $sql="INSERT INTO `pantalla`(`CORREO`, `DSIE`, `SERIE`, `MARCA`, `MODELO) VALUES ('".$correo."','".$dsie."','".$serie."','".$marca."','".$modelo."')";
  $result = $conn->query($sql);
  mysqli_close($conn);
}

function agregar_usuario($correo,$nombre,$apellidop,$apellidom,$unidad,$cargo,$anexo){
  $conn=concetar();
  $sql="INSERT INTO `usuario`(`CORREO`, `NOMBRE`, `APELLIDOP`, `APELLIDOM`, `UNIDAD`, `CARGO`, `ANEXO`) VALUES ('".$correo."','".$nombre."','".$apellidop."','".$apellidom."','".$unidad."','".$cargo."','".$anexo."')";
  $result = $conn->query($sql);
  mysqli_close($conn);
}


?>