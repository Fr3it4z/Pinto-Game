<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="desenvolvimento.css">
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
        <h1>Data Base</h1>

        <div><h2>Registrar Player</h2></div>
        <form action="connect.php" method="POST">

            <label for="user">Name: </label><br>
            <input type='text' name='name' id="name" require/><br><br>

            <label for="score">Score: </label><br>
            <input type='text' name='score' id="score"/> <br>

            <input class="Enviar" type='submit' name='submit' id="submit"/> <br> <br>
            
        </form>

    </main>

    <footer class="rodape">
        <img class="rodape-imagem" src="Pintologo.gif" alt="Logo do Pinto">
    </footer>

    
</body>
    <div class="fixe">
        <img src="preto.jpg"  width= 100%;>
    </div>
</html>