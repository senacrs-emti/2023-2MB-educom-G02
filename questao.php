<?php
include_once 'conexao.php';

// captura a area
$area = $_GET['area'];

// sql dos dados da area
$sqlArea = "SELECT * FROM areaconhecimento WHERE id={$area}";


// sql das questoes da area
$sqlQuestoes = "SELECT * FROM questoes WHERE Area={$area}";

$id = $_GET['id'];
$sql = "SELECT * FROM enem WHERE id = {$id}";
$result_query = mysqli_query($conexao, $sql);
while ( $row = mysqli_fetch_array($result_query, MYSQLI_ASSOC));
?>
<title>Estuda.com</title>
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
