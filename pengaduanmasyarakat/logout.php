<?php
session_start();
unset($_SESIION['nama']);
session_destroy();
header('location:index.php');
 ?>
