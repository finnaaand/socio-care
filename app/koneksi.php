<?php

$mysqli = new mysqli("localhost", "root", "", "sociocare");

if (!$mysqli) {
    echo "Koneksi bermasalah !";
}
