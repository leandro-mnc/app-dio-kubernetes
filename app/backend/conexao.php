<?php

$database = $_ENV['DB_NAME'];
$servername = $_ENV['DB_HOST'];
$username = $_ENV['DB_USER'];
$password = $_ENV['DB_PASSWORD'];

try {
    // Criar conexão
    $link = new PDO(
        'mysql:host=' . $servername . ';dbname=' . $database,
        $username,
        $password,
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );

    $sql = 'SET NAMES utf8mb4';
    $link->exec($sql);
} catch (PDOException $exception) {
    echo '<pre>' . print_r($exception->getCode() . ': ' . $exception->getMessage(), true) . '</pre>';
    exit;
}
