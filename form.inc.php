<?php
if (!isset($_SESSION['cart'])) {  // Se crea el carro si no existe
    $_SESSION['cart'] = [];
}

$consulta =
    'SELECT
            p.Product_id AS Id,
            p.Product_name AS Producto,
            p.Units AS Unidades,
            p.Price AS Precio,
            p.Product_description AS Descripcion,
            p.Picture AS Imagen
        FROM 
            product p
        WHERE p.Product_Id = :id';

$statement = $connection->prepare($consulta);
$statement->execute(['id' => $_GET['id']]);

$producto = $statement->fetch();  // Quitamos el ALL para que no haga un Array de Arrays

if (file_exists('img/' . $producto['Imagen'])) {
    $img = $producto['Imagen'];
} else {
    $img = 'No_image_available.svg';
}
echo '<div class="formulario"><div class="titulo">';
echo '<img src="img/' . $img . '">';
echo '<p class="nombre">' . $producto['Producto'] . '</p></div>';
echo '<p><b>' . $producto['Precio'] . '€</b> (' . $producto['Unidades'] . ' ud disponibles).</p>';
echo '<p class="description">' . $producto['Descripcion'] . '</p><br>';
echo '<form action="chart.php" method="POST"><label for="cantidad">¿Cuantos productos quieres añadir?</label><br>';
echo '<input type="number" name="cantidad" min="1" value="1" required><button type="submit">+ Añadir</button>';
echo '</div>';
// Para enviar los datos del producto por POST
echo '<input type="hidden" name="id" value="' . $producto['Id'] . '">';
echo '<input type="hidden" name="imagen" value="' . $img . '">';
echo '<input type="hidden" name="producto" value="' . $producto['Producto'] . '">';
echo '<input type="hidden" name="precio" value="' . $producto['Precio'] . '">';
echo '<input type="hidden" name="unidades" value="' . $producto['Unidades'] . '">';

?>