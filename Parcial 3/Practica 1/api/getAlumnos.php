<?php
header ("Content-Type: application/json");
header ("Access-Control-Allow-Origin: *");

$usuarios=[
    ["id" => 1, "nombre" => "Ana Sofía", "correo" => "Soía23@gmail.com"],
    ["id" => 1, "nombre" => "Bettina Beltran", "correo" => "Bettina53@gmail.com"],
    ["id" => 1, "nombre" => "Rosa Del Río", "correo" => "Rosi18@gmail.com"],
];

echo json_encode($usuarios);

?>