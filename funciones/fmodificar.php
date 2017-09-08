<?php
include "conexion.php";

///////////////////////////////////////////////////////////////////
///////////funciones para modificar////////////////////////////////
///////////////////////////////////////////////////////////////////

function modificar_usuario($correo,$nombre,$apellidop,$apellidom,$unidad,$cargo,$anexo){
  $conn=conectarse();
  $sql="UPDATE `usuario` SET `NOMBRE`='".$nombre."',`APELLIDOP`='".$apellidop."',`APELLIDOM`='".$apellidom."',`UNIDAD`='".$unidad."',`CARGO`='".$cargo."',`ANEXO`='".$anexo."' WHERE `CORREO`='".$correo."'";
  if(mysqli_query($sql)){
    return true;
  }else{
    return false;
  }
  mysqli_close();
}

function modificar_computador($correo,$dsie,$serie,$marca,$modelo,$procesador,$hdd,$ram,$so){
  $conn=conectarse();
  $sql="UPDATE `computador` SET `CORREO`='".$correo."', `MARCA`='".$marca."',`MODELO`='".$modelo."',`PROCESADOR`='".$procesador."',`HDD`='".$hdd."',`RAM`='".$ram."',`SO`='".$so."' WHERE `DSIE`='".$dsie."'";
  if(mysqli_query($sql)){
    return true;
  }else{
    return false;
  }
  mysqli_close();
}

?>