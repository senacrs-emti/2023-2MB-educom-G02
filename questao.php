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
          $sql = "SELECT * FROM questoes WHERE Area={$area}";
          // executa o comando SQL no banco e retornar os dados
          $result = mysqli_query( $conexao, $sql );
          // laco de repeticao 
          while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){       
          ?>
          <div class="col-6">
            <h2 class="Nome"><?php echo $row['Descricao']?></h2>
          </div>
          <?php
          }
          ?>
<?php 
include_once 'footer.php';
?>
