<?php
ini_set('session.gc_maxlifetime', 60);
session_start();

$id = $_GET['id'];

if (isset($id) && $id != null) {  // Si se ha pasado un ID...
    if (isset($_SESSION['cart'][$id])) {
        unset($_SESSION['cart'][$id]);
    }

}

header("Location: chart.php");
exit();

?>