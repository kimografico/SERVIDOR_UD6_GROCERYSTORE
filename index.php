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
    <h1>Grocery Store</h1>

    <?php

        include 'connection.php';

        // Necesito: Id, Producto, Unidades, Precio, Descripción, Imagen
        $consulta =
        'SELECT
            p.Product_id AS Id,
            p.Product_name AS Producto,
            p.Units AS Unidades,
            p.Price AS Precio,
            p.Product_description AS Descripcion,
            p.Picture AS Imagen
        FROM 
            product p;';

        $products = $connection->query($consulta)->fetchAll();

        // echo '<pre>';
        // print_r($products);
        // echo '</pre>';

        echo '<section>';

        foreach ($products as $producto) {
            if (file_exists('img/' . $producto['Imagen'])) {
                $img = $producto['Imagen'];
            } else {
                $img = 'No_image_available.svg';
            }
            echo '<div class="producto"><div class="titulo">';
            echo '<img src="img/' . $img . '">';
            echo '<p class="nombre">' . $producto['Producto'] . '</p></div>';
            echo '<p><b>' . $producto['Precio'] . '€</b> (' . $producto['Unidades'] . ' ud disponibles).</p>';
            echo '<p class="description">' . $producto['Descripcion'] . '</p>';
            if (isset($_SESSION['user']))
                echo '<a href="chart.php?id=' . $producto['Id'] . '">+ Añadir</a>';  // 🛒
            echo '</div>';
        }

        echo '</section>';

        $cantidadElementos = 0;

        if (isset($_SESSION['user'])) {
            $username = ($_SESSION['user']['Nombre']);
            $userID = ($_SESSION['user']['Usuario']);
            if (isset($_SESSION['cart'][$userID])) {
                $cantidadElementos = count($_SESSION['cart'][$userID]);
            }
        } else {
            $username = 'LOGIN';
        }

        echo '<div class="botones">';

        echo '<div class="btn_user">';
        echo '<a href="login.php">👤</a><br>';
        echo $username;
        echo '</div>';

        echo '<div class="btn_carrito">';
        if (isset($_SESSION['user'])) {
            echo '<a href="chart.php">🛒</a><br>';
        } else {
            echo '<a href="invita.php">🛒</a><br>';
        }
        echo $cantidadElementos . ' productos';  // Marca los productos distintos en el carrito (no cantidades)
        echo '</div>';

        if (isset($_SESSION['user']) && $_SESSION['user']['Rol'] == 'admin') {
            echo '<div class="btn_user">';
            echo '<a href="users.php">👤</a><br>';
            echo 'USERS';
            echo '</div>';
        }

        echo '</div>';

        /*
         * echo '<pre>';
         * echo '<b>USER</b><br>';
         * print_r($_SESSION['user']);
         * echo '<br>--------------<br>';
         * echo '<b>CART</b><br>';
         * print_r($_SESSION['cart']);
         * echo '</pre>';
         */
    ?>
</body>
</html>