<?php
    include("./db.php");

    $connectServer = new ConnectServer();

    $conn = $connectServer->conectar();

    $sql_table_musicasAndLinks = $conn->prepare("SELECT * FROM musicas AS M INNER JOIN `link_musicas` AS L ON M.nome = L.nome");

    $sql_table_musicasAndLinks->execute();

    $data = $sql_table_musicasAndLinks->fetchAll(PDO::FETCH_ASSOC);

    // Defina o cabeçalho para indicar que a resposta é JSON
    header('Content-Type: application/json');

    // Retorne apenas os dados JSON
    echo json_encode($data);
?>
