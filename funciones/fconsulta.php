<?php
include "conexion.php";

///////////////////////////////////////////////////////////////////
///////////funciones de prueba/////////////////////////////////////
///////////////////////////////////////////////////////////////////

function test(){
  $conn=conectar();
  $sql = "SELECT CORREO,NOMBRE,APELLIDOP,APELLIDOM,UNIDAD,CARGO,ANEXO FROM usuario";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      echo "Nombre: ",$row["NOMBRE"]," ",$row["APELLIDOP"]," ",$row["APELLIDOM"];
      echo " <br>";
      echo "Unidad: ",$row["UNIDAD"];
      echo " <br>"; 
      echo "Cargo: ",$row["CARGO"];
      echo " <br>"; 
      echo "Correo: ",$row["CORREO"];
      echo " <br>";
      echo "Anexo: ",$row["ANEXO"];
      echo " <br>";
    } 
  }else{
    echo '0 resultados';
  }
  mysqli_close($conn);
  }

?>