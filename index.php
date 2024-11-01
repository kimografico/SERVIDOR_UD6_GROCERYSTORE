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
        echo '<a href="chart.php?id='. $producto['Id'] .'">+ Añadir</a>'; // 🛒
        echo '</div>';
    }

    echo '</section>';

    if (isset($_SESSION['cart'])) {
        $cantidadElementos = count($_SESSION['cart']);
    }

    echo '<div class="btn_carrito">';
    echo '<a href="chart.php">🛒</a><br>';
    echo $cantidadElementos . ' productos'; // Marca los productos distintos en el carrito (no cantidades)
    echo '</div>';


    ?>
</body>
</html>