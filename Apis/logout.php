<?php
require_once realpath("../vendor/autoload.php");
use App\Models\Auth;
session_start();

// Headers
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
header('Application: application/json');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');


$log = new Auth();
$res=$log->logout();
if($res){
echo json_encode(array('status' => 200, 'Location' => '/index.php'));
}else{
    echo json_encode(array('status' => 500, 'message' => 'something went wrong'));
}
