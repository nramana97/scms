<?php
session_start();
error_reporting(0);
header('Cache-Control: no-store');
header('Content-Type: text/event-stream');
header('Connection: keep-alive');
include("../connection.php");

if (isset($_SESSION['wfid']) && $conn) {
    session_write_close();
    $p = '';
    while (true) {
        $sql = "SELECT
            DATE_FORMAT(RAISED_ON, '%b %Y') AS Month,
            DATE_FORMAT(RAISED_ON, '%d') AS Day,
            COUNT(*) AS ComplaintCount
        FROM
            COMPLAINTS
        GROUP BY
            DATE_FORMAT(RAISED_ON, '%Y-%m'), DATE_FORMAT(RAISED_ON, '%d')
        ORDER BY
            DATE_FORMAT(RAISED_ON, '%Y-%m'), DATE_FORMAT(RAISED_ON, '%d')";

        $result = mysqli_query($conn, $sql);
        $data = array();

        if ($result) {
            while ($row = mysqli_fetch_assoc($result)) {
                $month = $row['Month'];
                $day = $row['Day'];
                $count = $row['ComplaintCount'];

                if (!isset($data[$month])) {
                    $data[$month] = array();
                }

                $data[$month][$day] = $count;
            }
        }

        $newData = json_encode($data);

        if ($newData !== $p) {
            $p = $newData;
            echo "data: $newData\n\n";
            ob_flush();
            flush();
        }

        sleep(1);
    }
}
?>
