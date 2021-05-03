<?php
require_once realpath("vendor/autoload.php");
use App\Models\Article;
use App\Models\Images;
session_start();

if (isset($_GET['id']) && isset($_GET['view']) && $_GET['view'] == 'true') {
    $id = $_GET['id'];
    $Article = new Article();
    $Article->updateViews($id);
    $images = new Images();
    $allImgs = $images->articleImages($id);
    $topViewd = $Article->topViewDifId($id);
    $single_article = $Article->read_single($id);
    $total_likes = $Article->totalLikes($id);
    $total_Unlikes = $Article->totalUnLikes($id);
    $user_status = -1;
    if (isset($_SESSION['id'])) {
    $user_status_db = $Article->user_status($id,$_SESSION['id']);
    if ($user_status_db != -1) {
        foreach ($user_status_db as $val) {
            $user_status = $val->type;
        }
    }
  }
} else {
    echo 'Something Went Wrong';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Details</title>
 <?php include_once "config/header.php"?>
</head>

<body >

<!--header -->
<?php include_once 'Views/TopHeader.php'?>


<div class="row">

 <!-- main part  -->
  <div class="main">
    <!-- image -->
    <?php include_once 'Views/DetailsPage/Hero.php'?>

   <!-- tool bar -->
   <div class="toolbar">
     <div class="analtics">
        <diV >
         <i class="far fa-eye views" ></i>
         <span class="numbers"><?php echo $single_article['views'] ?></span>
        </diV>

      <div class='likes_btns'>
        <Button
            id="like_<?php echo $id ?>"
            class="like like-Btn"
            style="<?php if ($user_status == 1) {echo "color: #008ad3;";}?>"
          >
        <i class="fas fa-thumbs-up"></i>
          </Button>
            <span id="likes"><?php echo $total_likes; ?></span>


        <Button
          id="unlike_<?php echo $id ?>"
          class="unlike like-Btn"
          style="<?php if ($user_status == 0) {echo "color: #ff0b37";}?>"
          >
          <i class="fas fa-thumbs-down"></i>
          </Button>
          <span id="unlikes"><?php echo $total_Unlikes; ?></span>

      </div>
    </div>

      <div class="share-btn-container">
        <span class='share'> Share On:</span>
        <a href="#" class="facebook-btn">
          <i   class="fab fa-facebook-square fb-share-btn"></i>
        </a>
        <a href="#" class="twitter-btn">
          <i  class="fab fa-twitter-square twitter-shar-btn"></i>
        </a>
      </div>
    </div>


    <!-- Body Content -->
    <?php include_once 'Views/DetailsPage/Body.php'?>

    <!-- slider -->
    <?php include_once 'Views/DetailsPage/Slider.php'?>
 </div>


 <!-- side bar -->
  <div class="side">
    <h2 class='sectionTitle'>Top Viewed Articles </h2>
   <?php include_once 'Views/SideBar.php'?>
  </div>


 </div>

 <!-- footer -->
 <?php include_once 'Views/Footer.php'?>


</div>


</body>

<script src="Scripts/logout.js"></script>
<script src="Scripts/ajax.js"></script>
<script src="Scripts/Slider.js"></script>
<script src="Scripts/socialShare.js"></script>
</html>
