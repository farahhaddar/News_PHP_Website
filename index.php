<?php
require_once realpath("vendor/autoload.php");
use App\Models\Article;
session_start();

$Article = new Article();
$topViewd = $Article->topViewd();
$mostrecent = $Article->mostRecent();
$all = $Article->readAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title> White Beard</title>
 <?php include_once "config/header.php"?>
</head>


<body>


<!-- header -->
<?php include_once 'Views/TopHeader.php'?>

<div class="row">

  <!-- main part  -->
  <div class="main">
   <h2 class="sectionTitle">Most Recent Articles</h2>
   <hr>
   <!-- cards -->
    <?php include_once 'Views/HomePage/Cards.php'?>

    <!-- second section -->
    <h2 class='sectionTitle secondT'>All Articles</h2>
    <hr/>
    <?php include_once 'Views/HomePage/AllArticles.php'?>
  </div>

  <!-- side bar -->
  <div class="side">
      <h2 class='sectionTitle'>Top Viewed Articles </h2>
      <?php include_once 'Views/SideBar.php'?>
  </div>

</div>

<!-- footer -->
<?php include_once ('Views/Footer.php')?>


</body>
<script>
  function location(){
     window.location.href='/Login.php'
  }
</script>
<script src="Scripts/logout.js"></script>
</html>
