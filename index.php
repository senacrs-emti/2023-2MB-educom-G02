<?php 
// conexao com o banco 
include_once 'conexao.php';
?>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="./style.css?v=<?php echo rand(0,999999);?>">
 <title>HPlants</title>
</head>
<body class="container-fluid">

<header class="row">
     <div class="col">
     </div>
    <a href="index.php"><div class="col"><h1>Estuda.com</h1></div></a> 
     <div class="col">
       <form action="busca.php" method="get">
         <input class="input" type="text" name="busca" id="search" placeholder="faça sua busca" required>
         <input type="submit"><i class="fas fa-search"></i></input>
         </div>
       </form>
       
         <main id="index" class="container">
          <div class="row">
          <?php 
          $sql = "SELECT * FROM areaconhecimento";
          // executa o comando SQL no banco e retornar os dados
          $result = mysqli_query( $conexao, $sql );
          // laco de repeticao 
          while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){       
          ?>
          <div class="col-6">
            <h2 class="Nome"><?php echo $row['Nome']?></h2>
            <a href="questao.php?area=<?php echo $row['id'];?>"><img src="./img/<?php echo $row['foto'];?>" alt=""></a>
          </div>
          <?php
          }
          ?>

     </div> 
 </header>
 <?php 
include_once 'footer.php';
?>
