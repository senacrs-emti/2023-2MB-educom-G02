<?php
include_once 'conexao.php';
?>
<title>HPlants</title>
</head>
<body class="container-fluid">

<header class="row">
     <div class="col">
     </div>
    <a href="index.php"><div class="col"><h1>Ciencias Humanas</h1></div></a> 
     <div class="col">
       <form action="busca.php" method="get">
         <input class="input" type="text" name="busca" id="search" placeholder="faça sua busca" required>
         <input type="submit"><i class="fas fa-search"></i></input>
<?php 
include_once 'footer.php';
?>
