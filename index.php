
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

         <a href="questao.php"><img src="./img/ciencias.PNG" alt=""></a>
         
         <img src="./img/humanas.PNG" alt="">
        <br><img src="./img/linguagensi.PNG" alt="">
         <br><img src="./img/linguagens.PNG" alt="">
       </form>
     </div> 
 </header>
 <?php 
include_once 'footer.php';
?>
