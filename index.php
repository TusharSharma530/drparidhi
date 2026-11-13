<?php

$geturl = $_GET['type'] ?? '';

$geturl = explode('/', $geturl);
$geturl1 = $geturl[0];

include("branch/view/header.php");
?>

<main>
<?php

if (empty($_GET['type'])) {
    include("branch/view/home.php");
} else {

    if (file_exists("branch/view/" . $geturl1 . ".php")) {
        include("branch/view/" . $geturl1 . ".php");
    } else {
        echo $geturl1;
    }

}
?>
</main>

<?php
include("branch/view/footer.php");
?>