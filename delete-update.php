<?php

    $Entry_date = $_GET['Entry_date']; 

    $conn = Mysqli_connect("localhost", "root", "", "smart_parking") or die("conection failed!");
    $sql = "DELETE FROM update_info where Entry_date = '{$Entry_date}'";
    $result = mysqli_query($conn, $sql) or die("query Failed");
    header("location: http://localhost/project1/record.php");
    mysqli_close($conn);
?>