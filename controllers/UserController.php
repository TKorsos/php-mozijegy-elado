<?php

namespace controllers;

class UserController {
    use \traits\Utilities;

    function seatsView() {
        $this->getViewFile("seats");
    }

    function paymentView() {
        $this->getViewFile("payment");
    }

    function messageView() {
        $this->getViewFile("message");
    }

    //
    function seatProcess() {
        if(isset($_POST["reserve"])) {
            if(!isset($_SESSION["seats"])) {
                $_SESSION["seats"] = [];
            }

            $_SESSION["seats"][] = $_POST;
        }

        header("location: ?page=paymentView");
        exit;
    }

    function paymentProcess() {
        if(isset($_POST["payment"])) {

            // a küldött adatok elhelyezése sessionbe
            if(!isset($_SESSION["payment"])) {
                $_SESSION["payment"] = [];
            }

            $_SESSION["payment"][] = $_POST;

            // a lefoglalt székek kinyerése és elhelyezése tömbbe
            $seats = [];
            if (isset($_SESSION["payment"])) {
                foreach ($_SESSION["payment"][0] as $key => $payment) {
                    // feltétel egyszerűsítése?
                    if ($key !== "payment" && $key !== "first_name" && $key !== "last_name" && $key !== "tel" && $key !== "email") {
                        $seats[] = $payment;
                    }
                }
            }

            // adatok helyességének ellenőrzése
            $payment_errors = [];

            if(mb_strlen($_POST["first_name"]) < 2 || mb_strlen($_POST["first_name"]) > 20) {
                $payment_errors[] = "A vezetéknévnek 2 és 20 karakter között kell lennie!";
            }

            if(mb_strlen($_POST["last_name"]) < 3 || mb_strlen($_POST["last_name"]) > 20) {
                $payment_errors[] = "A keresztnévnek 2 és 20 karakter között kell lennie!";
            }

            if(mb_strlen($_POST["tel"]) !== 12) {
                $payment_errors[] = "A telefonszámnak pontosan 12 karakterből kell állnia és +36-tal kezdődik (magyar szám esetén)!";
            }

            if(filter_var($_POST["email"], FILTER_VALIDATE_EMAIL) === false) {
                $payment_errors[] = "Invalid e-mail címet adott meg!";
            }

            // eredmény kiíratása
            if(count($payment_errors) > 0) {
                foreach($payment_errors as $error) {
                    $_SESSION["errors"][] = $error;
                }

                header("location: ?page=paymentView");
                exit;
            }
            else {
                //
                if (isset($_SESSION["seats"])) {
                    foreach ($_SESSION["seats"][0] as $key => $seat) {
                        if($key !== "reserve") {
                            mysqli_query($this->connDb(), "update seats set occupied = '1' where id = '".$seat."' ");
                        }
                    }
                }
                //

                mysqli_query($this->connDb(), "insert into payment (`seats`, `first_name`, `last_name`, `tel`, `email`) values ('".implode(",", $seats)."', '".$_POST["first_name"]."', '".$_POST["last_name"]."', '".$_POST["tel"]."', '".$_POST["email"]."') ");

                header("location: ?page=messageView");
                exit;
            }
        }
    }

    // teszthez gyors alaphelyzetbe állítás
    function clearAllSeatProcess() {
        if(isset($_POST["clear_all"])) {
            mysqli_query($this->connDb(), "update seats set occupied = '0' ");
        }

        header("location: ?page=seatsView");
        exit;
    }

    // seats db process
    function seatsDbProcess() {
        $seats = mysqli_query($this->connDb(), "select * from seats order by id desc");

        while($seat = mysqli_fetch_assoc($seats)) {
            $seatsArr[] = $seat;
        }

        return $seatsArr;
    }
}