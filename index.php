<?php
    include("./php/db.php");

    $connectServer = new ConnectServer();

    $conn = $connectServer->conectar();

    $sql_table_musicasAndLinks = $conn -> prepare("SELECT * FROM musicas AS M INNER JOIN `link_musicas` AS L ON M.nome = L.nome");

    $sql_table_musicasAndLinks->execute();

    $data = $sql_table_musicasAndLinks -> fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Musicas do Carnaval da Bahia</title>
    <script src="./js/header.js"></script>
    <script src="./js/jquery-3.7.1.js"></script>
    <script src="./js/main.js"></script>
    <script src="./js/materialize.js"></script>
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/section.css">
    <link rel="stylesheet" href="./css/materialize.css">
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <?php
        include('./php/Header/Header.php');
    ?>
    <?php
        include('./php/Banner/Banner.php');
    ?>
    <?php
        include('./php/Section/Section1.php');
    ?>
    <?php
        include('./php/Footer/Footer.php');
    ?>
</body>
</html>