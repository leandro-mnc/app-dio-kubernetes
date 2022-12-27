<?php

/**
 * @var PDO $link
 */

include 'bootstrap.php';

$nome = $_POST["nome"];
$email = $_POST["email"];
$comentario = $_POST["comentario"];
$ip = gethostbyname(gethostname());

$query = "INSERT INTO mensagens(nome, email, comentario, ip) VALUES ('$nome', '$email', '$comentario', '$ip')";

if ($link->exec($query) !== false) {
  echo "New record created successfully";
} else {
  echo "Error: " . $link->error;
}
