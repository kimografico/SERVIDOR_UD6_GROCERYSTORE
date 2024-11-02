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
    <title>Carrito</title>
</head>
<body>
<h1>Carrito</h1>
<?php

include 'connection.php';

$total = 0;

if (isset($_SESSION['user'])) {
    $userID = ($_SESSION['user']['Usuario']);
if (!isset($_SESSION['cart'][$userID])) {
    $_SESSION['cart'][$userID]=[];
}

if (isset($_GET['id']) && $_GET['id'] != null) {  // Si se ha pasado un ID...
    include 'form.inc.php'; // Se include el formulario para introducir cantidad

} else {
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {  // Si se ha pasado un POST...
        $id = $_POST['id'];
        $producto = $_POST['producto'];
        $imagen = $_POST['imagen'];
        $precio = $_POST['precio'];
        $cantidad = $_POST['cantidad'];
        $unidades = $_POST['unidades'];
        $maxud = '';

        if (isset($_SESSION['cart'][$userID][$id])){
            $cantidad = $cantidad + $_SESSION['cart'][$userID][$id]['cantidad']; // Se suma a la cantidad anterior, si la había
        }

        if ($cantidad > $unidades){
            $cantidad = $unidades;
            $maxud = '⚠️<b> No quedan tantas unidades</b>. Apuntado pedido máximo ⚠️<br><br>';
        }

        $_SESSION['cart'][$userID][$id] = [
            'producto' => $producto,
            'imagen' => $imagen,
            'precio' => $precio,
            'cantidad' => $cantidad
        ];
    }

    foreach ($_SESSION['cart'][$userID] as $id => $item) {
        if (file_exists('img/' . $item['imagen'])) {
            $img = $item['imagen'];
        } else {
            $img = 'No_image_available.svg';
        }
        echo '<div class="formulario"><div class="titulo">';
        echo '<img src="img/' . $img . '">';
        echo '<p class="nombre">' . $item['producto'] . '</p></div>';
        echo '<p><b>' . $item['precio'] . '€</b> (' . $item['cantidad'] . ' ud seleccionadas).</p>';
        echo '<a href="delete_product.php?id='. $id .'">Eliminar producto</a>'; // 🛒
        echo '</div>';
        $total = $total + ($item['cantidad'] * $item['precio'] );
    }

    if (isset($maxud)) echo $maxud;

    if (empty($_SESSION['cart'][$userID])) {
        echo "<h2>El carrito está vacío</h2>";
    }

    echo '<b>TOTAL:</b> ' . number_format($total) . '€<br><br>';
    
}
}
echo '<a href="index.php">VOLVER</a>'

?>
</body>
</html>