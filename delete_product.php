<?php
ini_set('session.gc_maxlifetime', 60);
session_start();

$id = $_GET['id'];
$userID = ($_SESSION['user']['Usuario']);

if (isset($id) && $id != null) {  // Si se ha pasado un ID...
    if (isset($_SESSION['cart'][$userID][$id])) {
        unset($_SESSION['cart'][$userID][$id]);
    }

}

header("Location: chart.php");
exit();

?>