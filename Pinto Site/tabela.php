<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="tabela.css">
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

    <main>
        <div class="titulo">
                <h1>Tabela de Pontuação</h1>
                <h2>Aqui podes ver a tua Pontuação!</h2>
        </div>
        <table>
            <tr>
                <th>Nome</th>
                <th>Pontuação</th>
            </tr>
            <?php
            $conn= mysqli_connect('localhost','root','','pinto_game') or die("Connection Failed:" .mysqli_connect_error());

            $sql = "SELECT * From users";
            $result = $conn->query($sql);

            if ($result -> num_rows > 0){
                while($row = $result-> fetch_assoc()){
                    echo "<tr><td>" . $row["name"] . "</td><td>" . $row["score"] . "</td><tr>";
                }
            }
            else{
                echo "<tr><td>Nenhum Resultato</td>";
            }
            $conn->close();

            ?>
        </table>
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