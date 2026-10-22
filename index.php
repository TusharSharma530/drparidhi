<?php

$geturl = $_GET['type'] ?? '';

$geturl = explode('/', $geturl);
$geturl1 = $geturl[0];


if(empty($_GET['type'])){
    include("branch/view/default.php");
}else{
    
    if(file_exists("branch/view/".$geturl1.".php")) {
        include("branch/view/".$geturl1.".php");
    }else {
        echo $geturl1;
    }
}

?>
