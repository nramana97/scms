<?php
session_start();
header('Cache-Control: no-cache');
header('Content-Type: text/event-stream');
header('Connection: keep-alive');
include("../connection.php");

if (isset($_SESSION['wfid']) && $conn) {
    session_write_close();
    $p = '';
    while (true) {
        $sql = "SELECT WFID, WFNAME, WFPHONE FROM welfare_details WHERE WFID='{$_SESSION["wfid"]}'";
        $result = mysqli_query($conn, $sql);
        $data = array();
    
        if ($result) {
            $data = mysqli_fetch_assoc($result);
        }

        // Set session variables with the data
        $_SESSION['phone'] = $data['WFPHONE'];
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
