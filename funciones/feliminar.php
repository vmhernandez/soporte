<?php
include "conexion.php";

///////////////////////////////////////////////////////////////////
///////////funciones para eliminar/////////////////////////////////
///////////////////////////////////////////////////////////////////


function eliminar_usuario($correo){
  $conn=conectarse();
  $sql="DELETE FROM `usuario` WHERE correo='".$correo."'";
  if(mysqli_query($sql)){
    return true;
  }else{
    return false;
  }
  mysqli_close();
}
function eliminar_computador($dsie){
  $conn=conectarse();
  $sql="DELETE FROM `computador` WHERE dsie='".$dsie."'";
  if(mysqli_query($sql)){
    return true;
  }else{
    return false;
  }
  mysqli_close();
}
function eliminar_impresora($dsie){
  $conn=conectarse();
  $sql="DELETE FROM `impresora` WHERE dsie='".$dsie."'";
  if(mysqli_query($sql)){
    return true;
  }else{
    return false;
  }
  mysqli_close();
}
function eliminar_telefono($dsie){
  $conn=conectarse();
  $sql="DELETE FROM `telefono` WHERE dsie='".$dsie."'";
  if(mysqli_query($sql)){
    return true;
  }else{
    return false;
  }
  mysqli_close();
}
function eliminar_pantalla($dsie){
  $conn=conectarse();
  $sql="DELETE FROM `pantalla` WHERE dsie='".$dsie."'";
  if(mysqli_query($sql)){
    return true;
  }else{
    return false;
  }
  mysqli_close();
}
function eliminar_otros($dsie){
  $conn=conectarse();
  $sql="DELETE FROM `otros` WHERE dsie='".$dsie."'";
  if(mysqli_query($sql)){
    return true;
  }else{
    return false;
  }
  mysqli_close();
}
?>