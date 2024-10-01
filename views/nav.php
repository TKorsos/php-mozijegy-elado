<?php

use controllers\UserController;

$page = new UserController;

?>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.php">Mozi</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="?page=seatsView">Székek</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="?page=paymentView">Fizetés</a>
                </li>
            </ul>
        </div>
    </div>
</nav>