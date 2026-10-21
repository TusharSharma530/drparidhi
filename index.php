<?php
// echo "<pre>";
// print_r($_GET['type']);
// echo "</pre>";
$geturl = $_GET['type'] ?? '';

$geturl = explode('/', $geturl);
$geturl1 = $geturl[0];

// echo $geturl1;

// if (isset($_GET['type'])) {

//     $geturl = $_GET['type'];

//     $geturl = explode('/', $geturl);

//     if (count($geturl) > 0) {

//         $gettype = $geturl[0];

//         $geturl = $geturl[1] ?? '';

//     }
// }


if(empty($_GET['type'])){
    include("branch/view/default.php");
}else{
    
    if(file_exists("branch/view/".$geturl1.".php")) {
        include("branch/view/".$geturl1.".php");
    }else {
        echo $geturl1;
    }
}


// if (isset($gettype) && $gettype === 'about.php') {

//     include("branch/view/about.php");

// } elseif (isset($gettype) && $gettype === 'specialities.php') {

//     include("branch/view/specialities.php");

// } else {

//     include("branch/view/default.php");

// }
?>
