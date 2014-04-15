<?php
sleep(1);
$descripcion = $_POST['descripcion'];
$imagen = $_POST['imagen'];

$link = mysql_connect('localhost', 'root', 'admin')or die('No se pudo conectar: ' . mysql_error());
mysql_select_db('mundotv') or die('No se pudo seleccionar la base de datos');

// Realizar una consulta MySQL
$query = 'INSERT INTO canales(descripcion,imagen,estado) VALUES ("'.$descripcion.'","'.$imagen.'",1)';
$result = mysql_query($query) or die('Consulta fallida: ' . mysql_error());

// Cerrar la conexión
mysql_close($link);

