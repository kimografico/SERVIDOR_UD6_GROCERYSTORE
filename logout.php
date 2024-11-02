<?php
ini_set('session.gc_maxlifetime', 60);
session_start();

unset($_SESSION['user']); // En lugar de destruir sesion, vaciamos el usuario. Asi se mantiene el carrito
// unset($_SESSION['cart']); // Vaciar carrito (solo para pruebas)
header("Location: index.php");
?>