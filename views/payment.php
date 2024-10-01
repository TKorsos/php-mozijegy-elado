<!doctype html>
<html lang="hu">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Fizetés</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
    <?php include("nav.php") ?>

    <main class="container-lg">
        <?php

        print_r($_SESSION["seats"]);

        
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
                <h1>Fizetési információk megadása</h1>
            </article>
        </section>
        <section class="row p-3">
            <article class="col-12 d-flex flex-column-reverse gap-1 align-items-center">
                <form action="?page=paymentProcess" method="post">
                    <?php

                    if (isset($_SESSION["seats"])) {
                        foreach ($_SESSION["seats"][0] as $key => $seat) {
                            if ($key !== "reserve") {
                                echo '
                                <div class="mb-3">
                                    <input type="text" class="form-control py-3" id="seat'.$seat.'" placeholder="seat'.$seat.'" name="seat'.$seat.'" readonly value="'.$seat.'. szék">
                                </div>
                                ';
                            }
                        }

                        echo
                        '<div class="form-floating mb-3">
                            <input type="text" class="form-control" id="first_name" placeholder="first_name" name="first_name">
                            <label for="first_name">Vezetéknév</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="last_name" placeholder="last_name" name="last_name">
                            <label for="last_name">Keresztnév</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="tel" placeholder="tel" name="tel">
                            <label for="tel" name="tel">Telefonszám</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="email" placeholder="email" name="email">
                            <label for="email">E-mail cím</label>
                        </div>
                        <div class="mb-3 mt-5">
                            <button type="submit" class="btn btn-primary w-100" name="payment">Vásárol</button>
                        </div>
                        ';
                    }

                    ?>
                </form>
            </article>
        </section>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>