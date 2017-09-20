<?php

include "fagregar.php";

if(isset($_POST['funcion']) && !empty($_POST['funcion'])) {
  $action = $_POST['funcion'];
  switch($action) {
    case 'addpc': agregar_computador(); break;
    case 'addprinter': agregar_impresora(); break;
    case 'addcellphone': agregar_telefono(); break;
    case 'addscreen': agregar_pantalla(); break;
    case 'addother': agregar_otros(); break;
    case 'adduser': agregar_usuario(); break;
  }
}?>