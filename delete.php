<?php
include_once("config.php");

$id = $_GET['id'];

// var_dump($id);

$deleteQuerie = "delete from users where id=:id";

$deleteUsers =  $conn->prepare($deleteQuerie);

$deleteUsers->bindParam(':id', $id);

$deleteUsers->execute();


header('Location:registrationForm.php'); 

?>