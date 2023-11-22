<?php
include_once 'conexao.php';

// captura a area
$area = $_GET['area'];
// sql das questoes da area
$sqlArea = "SELECT * FROM areaconhecimento WHERE id={$area}";

$result = mysqli_query($conexao, $sqlArea);
$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

?>
<title>Estuda.com</title>
</head>
<body class="container-fluid">

<header class="row">
     <div class="col">
     </div>
    <a href="index.php"><div class="col"><h1><?php echo $row['Nome']?></h1></div></a> 
     <div class="col">
       <form action="busca.php" method="get">
         <input class="input" type="text" name="busca" id="search" placeholder="faça sua busca" required>
         <input type="submit"><i class="fas fa-search"></i></input>



         <?php 
          $sql = "SELECT * FROM questoes AS q INNER JOIN resolucoes AS r ON q.id =r.Questoes_id WHERE AreaID={$area}";
          // executa o comando SQL no banco e retornar os dados
          $result = mysqli_query( $conexao, $sql );
          // laco de repeticao 
          while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){       
          ?>
          <div class="col-6">
            <p class="Nome"><?php echo $row['Pergunta']?></p>
            <img src="./img/<?php echo $row['Foto']?>" alt="">
            <p class="resolucao"><?php echo $row['descricao']?></p> 

            
            <hr>
          </div>
          <?php

          }
          ?>
          <p>
            //botao para aparecer resposta
  <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Link com href
  </a>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    Botão com data-target
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body">
    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
  </div>
</div>
<?php 

include_once 'footer.php';
?>
