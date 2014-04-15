<?php
$idcanales = $_POST['idcanales'];
$idhorarios = $_POST['idhorarios'];
$tituloprograma = $_POST['tituloprograma'];

$link = mysql_connect('localhost', 'root', 'admin')or die('No se pudo conectar: ' . mysql_error());
mysql_select_db('mundotv') or die('No se pudo seleccionar la base de datos');

// Realizar una consulta MySQL
$query = 'INSERT INTO programacion(idcanales,idhorarios,tituloprograma) VALUES ("'.$idcanales.'","'.$idhorarios.'","'.$tituloprograma.'")';
$result = mysql_query($query) or die('Consulta fallida: ' . mysql_error());

// Cerrar la conexión
mysql_close($link);

