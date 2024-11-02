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

if (isset($_POST['username'])) {
    include 'connection.php';

    $consulta =
    'SELECT
        u.user_id AS Usuario,
        u.first_name AS Nombre,
        u.last_name AS Apellido,
        u.email_id AS Email,
        u.rol AS Rol,
        u.password AS Password,
        u.mobile_no AS Telefono
    FROM 
        user u
    WHERE u.user_id = :username';

    $statement = $connection->prepare($consulta);
    $statement->execute(['username' => $_POST['username']]);
    $user = $statement->fetch();

    if (!$user) {
        echo '<br>⚠️ El usuario '. $_POST['username'] .' no existe ⚠️';
    } else {
        if (password_verify($_POST['userpass'], $user['Password'])){
            $loggedUser = $user;
        } else {
            echo '<br>⚠️ La contraseña introducida no es correcta ⚠️';
        }
    }

}

if (isset($_SESSION['user']['Usuario'])) $loggedUser = $_SESSION['user'];

if (isset($loggedUser)) {
    $_SESSION['user'] = $loggedUser;

    echo '<h1>'.$loggedUser['Nombre'].' '.$loggedUser['Apellido'].'</h1>';
    echo '<div class="listaUsuarios">';
    echo '<h2>👤</h2>';
    echo '<p><b>Usuario:</b> ' . $loggedUser['Usuario'] . '</p>';
    echo '<p><b>e-Mail:</b> ' . $loggedUser['Email'] . '</p>';
    echo '<p><b>Nombre:</b> ' . $loggedUser['Nombre'] . '</p>';
    echo '<p><b>Apellido:</b> ' . $loggedUser['Apellido'] . '</p>';
    echo '<p><b>Teléfono:</b> ' . $loggedUser['Telefono'] . '</p>';
    echo '<br><a href="logout.php">Cerrar Sesión</a>&emsp;&emsp;<a href="index.php">VOLVER</a>';
} else {

    echo '<h1>Login</h1>';
    echo '<div class="loginForm">';
    echo '<form action="#" method="POST">';
    echo '<label for="username">Usuario o e-mail</label><br>';
    echo '<input type="text" name="username" required><br><br>';
    echo '<label for="userpass">Contraseña</label><br>';
    echo '<input type="password" name="userpass" required><br><br>';
    echo '<input type="submit"><br>';
    echo '<a href="signin.php" class="btn_registro">¿Aún no estás registrado? ¡Regístrate!</a><br>';
    echo '<form></div><br><br>';
    echo '<a href="index.php">VOLVER</a>';
}


?>
    
</body>
</html>