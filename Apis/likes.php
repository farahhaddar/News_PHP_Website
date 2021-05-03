<?php
require_once realpath("../vendor/autoload.php");
use App\Models\Article;

// Headers
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
header('Application: application/json');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');


$like = new Article();
 if (isset($_REQUEST['article_id']) && isset($_REQUEST['user_id'] ) && isset($_REQUEST['type']))
  {
    $article = $_REQUEST['article_id'];
    $user = $_REQUEST['user_id'];
    $type=$_REQUEST['type'];
    $result = $like->updateLikes($article,$user,$type);
    echo json_encode($result);
 }
