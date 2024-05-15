<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="connect.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Um site de dois amigos para resgistar momentos e memórias de criar um jogo">
    <title>Pinto Game - Trabalho GameMaker</title>
</head>
<body>
    
    <header class="cabecalho">
        <nav class="menucab">
            <a href="index.php" class="Menutexto">Inicio</a>
            <a href="desenvolvimento.php" class="Menutexto">Data Base</a>
            <a href="tabela.php" class="Menutexto">Tabela de Pontuação</a>
            <a href="creditos.php" class="Menutexto">Créditos</a>
            
        </nav>
        <img class="imagem" src="Pinto Ataca 2.0.gif" alt="Logo do Pinto de Ataque">
    </header>

    <main class="php">
    <?php
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        $conn= mysqli_connect('localhost','root','','pinto_game') or die("Connection Failed:" .mysqli_connect_error());
        if(isset($_POST['name']) && isset($_POST['score'])){
            $name= $_POST['name'];
            $score= $_POST['score'];

            $sql="INSERT INTO `users` (`name`,`score`) VALUES ('$name','$score')";

            $query = mysqli_query($conn,$sql);
            if($query){
                echo "<br/><br/><p><center>Bem sucedido</center></p><br/><br/>";
            }
            else{
                echo '<br/><br/><p><center>Erro</center></p><br/><br/>';
            }

        }
    }
?>
    </main>

    <footer class="rodape">
        <img class="rodape-imagem" src="Pintologo.gif" alt="Logo do Pinto">
    </footer>

    
</body>
<div class="fixe">
        <img class="preto" src="preto2.jpg"  width= 100%; style="
    max-height: 52rem;
">
</html>