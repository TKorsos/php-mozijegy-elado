<?php

namespace traits;

trait Utilities {
    function getViewFile($file) {
        include(__DIR__."/../views/".$file.".php");
    }

    function connDb() {
        $hostname = "localhost"; 
        $username = "root";
        $password = "12345";
        $database = "mozi";
        $connection = mysqli_connect($hostname, $username, $password, $database);

        return $connection;
    }
}