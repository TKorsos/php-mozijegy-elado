<?php

session_start();

spl_autoload_register(function($file) {
    include("$file.php");
});

use controllers\UserController;

$page = new UserController;

if(!isset($_GET["page"])) {
    $page->seatsView();
}
else {
    $getpage = $_GET["page"];

    $page->$getpage();
}

// ebben az esetben a székek hibaüzenetkor eltünnek és a form is
// unset($_SESSION["seats"], $_SESSION["payment"], $_SESSION["errors"]);
unset($_SESSION["payment"], $_SESSION["errors"]);

if(!isset($_GET["page"]) || $_GET["page"] === "seatsView") {
    unset($_SESSION["seats"]);
}