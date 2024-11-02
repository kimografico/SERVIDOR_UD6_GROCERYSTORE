<?php
ini_set('session.gc_maxlifetime', 60);
session_start();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>GStore</title>
</head>
<body>

<?php

if ($_SESSION['user']['Rol']== 'admin'){
include 'connection.php';

$consulta =
'SELECT
    u.user_id AS Usuario,
    u.first_name AS Nombre,
    u.last_name AS Apellido,
    u.rol AS Rol,
    u.email_id AS Email
FROM 
    user u;';

$users = $connection->query($consulta)->fetchAll();

echo '<h1>Usuarios</h1>';
echo '<div class="listaUsuarios"><table>';
foreach ($users as $user) {
    echo '<tr>';
    echo '<td><b>👤 Usuario:</b> ' . $user['Usuario'] . '&emsp;</td>';
    echo '<td><b>📧 e-mail:</b> ' . $user['Email'] . '&emsp;</td>';
    echo '<td><b>🛠️ Rol:</b> ' . $user['Rol'] . '&emsp;</td>';
    
}
echo '</table></div>';

echo '<br><a href="index.php">VOLVER</a>';

} else {
    header('Location: index.php');
}

?>
    
</body>
</html>