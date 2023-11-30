<?php
include_once 'conexao.php';
?>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="./style.css?v=<?php echo rand(0,999999);?>">
<?php
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
    
     <nav class="navbar col-12 navbar-dark bg-dark">
  <a class="navbar-brand" href="index.php"><?php echo $row['Nome']?></a>
</nav>




         <?php 
          $sql = "SELECT * FROM questoes AS q INNER JOIN resolucoes AS r ON q.id =r.Questoes_id WHERE q.Area={$area}";
          // executa o comando SQL no banco e retornar os dados
          $result = mysqli_query( $conexao, $sql );
          // laco de repeticao 
          while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){       
          ?>
          <div class=" col-12 mt-5 font-weight-normal text-center">
            <p class="Nome"><?php echo $row['Pergunta']?></p>
            <div class="text-center"><img class="imagemquestao" src="./img/<?php echo $row['Foto']?>" alt=""></div>
            <ul class="list-group">
              <li class="resolucao mt-4 list-group-item"><?php echo $row['descricao']?></li>
            </ul>
             
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
<button id="verRespostas" type="button" class="btn btn-dark mt-3">Ver Respostas</button>
</div>
<?php 

include_once 'footer.php';
?>
