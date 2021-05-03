<?php
require_once realpath("vendor/autoload.php");
use App\Models\Article;
use App\Models\Images;


if (isset($_GET['id']) && isset($_GET['view']) && $_GET['view']=='true') {
    $id = $_GET['id'];
    $Article = new Article();
    $Article->updateViews($id);
    $images = new Images();
    $allImgs = $images->articleImages($id);
    $topViewd = $Article->topViewDifId($id);
    $single_article = $Article->read_single($id);
    $total_likes=$Article->totalLikes($id);
    $total_Unlikes = $Article->totalUnLikes($id);
    $user_status=-1;
    $user_status_db = $Article->user_status($id,1);
    if($user_status_db >= 0){
       $user_status= $user_status_db;
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



        
       <diV>
         <!-- <i class="fas fa-thumbs-up likes" ></i>
         <span class="numbers">
           <?php# echo $single_article['likes'] ?>
          </span> -->


        
                     <input type="button" 
                     value="Like" 
                     id="like_1_<?php echo $id;?>;?>"
                      class="like" 
                      style=
                      "<?php  if($user_status == 1){ echo "color: #ffa449;"; } ?>" 
                      />
                      &nbsp;
                      (
                        <span 
                        id="likes"
                        >
                        <?php echo $total_likes; ?>
                        </span>
                        )
                        &nbsp;

                       <input
                       type="button"
                       value="Unlike"
                       id="unlike_1_<?php echo $id; ?>;?>" 
                       class="unlike"
                       style="<?php if($user_status == 0){ echo "color: #ffa449;"; } ?>" 
                       />
                       &nbsp;
                       (
                        <span id="unlike">
                        <?php echo $total_Unlikes; ?>
                        </span>
                        )



                
                






        </diV>
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
  
<script src="Scripts/ajax.js"></script>
<script src="Scripts/Slider.js"></script>
<script src="Scripts/socialShare.js"></script>
</html>
