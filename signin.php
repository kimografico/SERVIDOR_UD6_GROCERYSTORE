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

if (isset($_POST['username'])){
    include 'connection.php';

    $consulta =
    'SELECT
        u.user_id AS Usuario
    FROM 
        user u
    WHERE
        u.user_id = :username;';

    $statement = $connection->prepare($consulta);
    $statement->execute(['username' => $_POST['username']]);
    $user = $statement->fetch();

    if ($user) {
        echo '<br><b>⚠️ El usuario '. $_POST['username'] .' ya existe ⚠️</b><br>';
        echo '<br>Si eres tu, accede desde la página de LOGIN<br>';
    } else {
        // INSERTAMOS USUARIO NUEVO
        $consulta = 
        'INSERT
        INTO USER (user_id, email_id, password, rol, first_name, last_name, mobile_no) 
        VALUES (:user_id, :email_id, :password, :rol, :first_name, :last_name, :mobile_no)
        ';

        $statement = $connection->prepare($consulta);

        // Ejecutar la consulta
        try {
            $statement->execute([
                'user_id' => $_POST['username'],
                'email_id' => $_POST['email'],
                'password' => password_hash($_POST['userpass'], PASSWORD_DEFAULT),
                'rol' => 'user', // Si pongo customer como pone el enunciado, me dice que es demasiado largo
                'first_name' => $_POST['firstname'],
                'last_name' => $_POST['lastname'],
                'mobile_no' => $_POST['phone']
            ]);
        
            if ($statement->rowCount() > 0) {
                $consulta =
                'SELECT
                    u.user_id AS Usuario,
                    u.first_name AS Nombre,
                    u.last_name AS Apellido,
                    u.email_id AS Email,
                    u.rol AS Rol,
                    u.mobile_no AS Telefono
                FROM 
                    user u
                WHERE u.user_id = :username';

                $statement = $connection->prepare($consulta);
                $statement->execute(['username' => $_POST['username']]);
                $users = $statement->fetch();

                $loggedUser = $users;
                $_SESSION['user'] = $loggedUser;

                header ('Location: login.php');

            } else {
                echo "⚠️ <b>Error</b>: No se pudo registrar el usuario ⚠️";
            }
        } catch (PDOException $e) {
            echo "⚠️ Error al registrar el usuario: " . $e->getMessage() . ' ⚠️';
        }
    }

} else {
    echo '<h1>Registro</h1>';
    echo '<div class="loginForm">';
    echo '<form action="#" method="post">';
    echo '<label for="username">Nombre de usuario o e-mail</label><br>';
    echo '<input type="text" name="username" required pattern="^[a-zA-Z0-9_]{4,25}$" title="Entre 4 y 25 caracteres"><br><br>';
    echo '<label for="userpass">Contraseña</label><br>';
    echo '<input type="password" name="userpass" required minlength="5" title="Al menos 5 caracteres"><br><br>';
    echo '<label for="firstname">Nombre</label><br>';
    echo '<input type="text" name="firstname" required pattern="^[a-zA-ZÀ-ÿ\s]+$" title="Solo letras y espacios"><br><br>';
    echo '<label for="lastname">Apellido</label><br>';
    echo '<input type="text" name="lastname" required pattern="^[a-zA-ZÀ-ÿ\s]+$" title="Solo letras y espacios"><br><br>';
    echo '<label for="email">e-mail</label><br>';
    echo '<input type="email" name="email" required title="Debe ser un correo válido"><br><br>';
    echo '<label for="phone">Teléfono</label><br>';
    echo '<input type="tel" name="phone" required pattern="^[0-9+\(\)\s]{9,18}$" title="Número de teléfono válido"><br><br>';
    echo '<input type="submit" value="Registrarse"><br>';
    echo '</form></div>';
}

echo '<br><a href="index.php">VOLVER</a>';
?>
    
</body>
</html>