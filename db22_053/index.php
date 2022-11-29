<?php
    
if(isset($_GET['controller'])&&isset($_GET['action'])  )
{
    $controller = $_GET['controller'];
    $action = $_GET['action'];
}
else{
    $controller = 'home';
    $action = 'home';
}
?>

<html>
    <head>
        <meta charset="UTF-8">
    </head>
    <body>
    </br>
    </br>


    <?php require_once("routes.php") ?>


    </body>
</html>


