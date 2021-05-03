<?php
require_once realpath("../vendor/autoload.php");
use App\Models\Article;

// Headers
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
header('Application: application/json');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');

$status = new Article();
if (isset($_REQUEST['user_id']) && isset($_REQUEST['article_id'])){
    $article = $_REQUEST['article_id'];
    $user = $_REQUEST['user_id'];
    $result = $status->user_status($article,$user);
    echo json_encode(array('user_status'=>$result));
}
