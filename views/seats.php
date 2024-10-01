<!doctype html>
<html lang="hu">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Székek</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
    <?php include("nav.php") ?>

    <main class="container-lg">
        <?php
        
            if(isset($_SESSION["errors"])) {
                echo
                '<section class="row p-3">
                    <article class="col-12 gap-1 justify-content-center">
                        <div class="alert alert-danger" role="alert">';
                            foreach($_SESSION["errors"] as $error) {
                                        echo "<div>$error</div>";
                            }
                echo
                        '</div>
                    </article>
                </section>
                ';
            }
        
        ?>
        <section class="row p-3">
            <article class="col-12 d-flex flex-row-reverse gap-1 justify-content-center">
                <h1>Székek foglalása</h1>
            </article>
        </section>
        <section class="row p-3">
            <?php

            $seats_arr = [27 => 41, 13 => 27, 7 => 13, 0 => 7];

            echo '<form action="?page=seatProcess" method="post" class="d-flex flex-column gap-1">';
            foreach($seats_arr as $seat_key => $seat_arr) {

                echo '<article class="d-flex flex-row-reverse gap-1 justify-content-center">';
                foreach($page->seatsDbProcess() as $seat) {
                    if($seat["seat_number"] >= $seat_key && $seat["seat_number"] < $seat_arr) {
                        echo '
                            <div class="seat-box d-flex justify-content-center align-items-center '.($seat["occupied"] == '1' ? "occupied" : "").'">
                                <div>
                                    <input type="checkbox" name="'.$seat["seat_number"].'" id="'.$seat["seat_number"].'" value="'.$seat["seat_number"].'" '.($seat["occupied"] == '1' ? "checked disabled" : "").'>
                                    <label for="'.$seat["seat_number"].'" class="seat-box d-flex justify-content-center align-items-center"><div>'.$seat["seat_number"].'</div></label>
                                </div>
                            </div>
                        ';
                    }
                }
                echo '</article>';
            }
            echo '
                <article class="col-12 d-flex flex-row-reverse gap-1 justify-content-center">
                    <div class="pt-5">
                        <button type="submit" class="btn btn-primary" name="reserve">Lefoglal</button>
                    </div>
                </article>
            </form>';

            ?>
        </section>

        <section class="row p-3 mt-5">
            <article class="col-12 d-flex flex-row-reverse gap-1 justify-content-center">
                <form action="?page=clearAllSeatProcess" method="post">
                    <button type="submit" class="btn btn-danger" name="clear_all">Összes szék felszabadítása</button>
                </form>
            </article>
        </section>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>