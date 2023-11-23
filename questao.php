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



         <?php 
          $sql = "SELECT * FROM questoes AS q INNER JOIN resolucoes AS r ON q.id =r.Questoes_id WHERE q.Area={$area}";
          // executa o comando SQL no banco e retornar os dados
          $result = mysqli_query( $conexao, $sql );
          // laco de repeticao 
          while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){       
          ?>
          <div class="col-6">
            <p class="Nome"><?php echo $row['Pergunta']?></p>
            <img src="./img/<?php echo $row['Foto']?>" alt="">
            <p class="resolucao"><?php echo $row['descricao']?></p> 
            <div class="respostaOculta">
              <?php   
              echo $row['correta'];
              ?>
              </div>
            </div>
            <hr>
          </div>
          <?php 
          }
          ?>
    
</div>
<div class="row">
<button id="verRespostas" type="button" class="btn btn-outline-light">Ver Respostas</button>
</div>
<?php 

include_once 'footer.php';
?>
