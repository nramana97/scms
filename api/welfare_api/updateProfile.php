<?php
session_start();
if (!isset($_SESSION['usermode'])) {
    header('Location: ../logout.php'); // Fixed "Location" typo
    exit;
}
include("../connection.php");
$data = array();
if ($conn && isset($_SESSION['wfid']) ) {
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $WFID = $_SESSION['wfid'];

    $sql = "UPDATE welfare_details SET WFNAME='{$name}', WFPHONE='$phone' WHERE WFID='$WFID'";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $_SESSION['phone'] = $phone;
  
        $_SESSION['wfname'] = $name;
        $response = array(
            'status' => 'true',
            'icon' => 'success',
            'text' => 'Profile Updated'
        );
        echo json_encode($response);
    } else {
        $response = array(
            'status' => 'false',
            'icon' => 'error',
            'text' => "Couldn't update"
        );
        echo json_encode($response);
    }
} else {
    $response = array(
        'status' => 'false',
        'icon' => 'error',
        'text' => "Server disconnected"
    );
    echo json_encode($response);
}
?>
