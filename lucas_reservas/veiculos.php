<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veiculos</title>
</head>
<body>
    <h1>Veículos</h1>
    
    <?php
        $SQL = mysqli_connect('localhost','root','','bd_reservas','3306'); //Conexão normal
        $pdo = new \PDO('mysql:host=localhost;dbname=bd_reservas','root','',array(\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")); //Conexão avançada

        if (!$SQL or !$pdo){
            die('Erro ao conectar-se com SQL');
        }

        $res = mysqli_query($SQL, 'Select * from veículo');

        while ($row = mysqli_fetch_array($res)){
            echo $row['ID'],' ',$row['NOME'],' ',$row['ANO'],' ',$row['KM'];
            echo '<br>';
        }

        // $nome = 'Lucas';

        // if (date('h') > 12 && date('h') < 18){
        //     echo 'Bom tarde, <b>',$nome,'</b>! </br> Hoje é <b>',date('d/m/y'),'</b> e <b>',date('h:i:s'),'</b>';
        // }else if (date('h') < 12){
        //     echo 'Bom dia, <b>',$nome,'</b>! </br> Hoje é <b>',date('d/m/y'),'</b> e <b>',date('h:i:s'),'</b>';
        // }else{
        //     echo 'Bom noite, <b>',$nome,'</b>! </br> Hoje é <b>',date('d/m/y'),'</b> e <b>',date('h:i:s'),'</b>';
        // }
    ?>
    
</body>
</html>