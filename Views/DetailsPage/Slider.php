<div class="slideshow-container">
    <?php
  foreach ($allImgs as $image) {
      echo "
      <div class='mySlides fade'>
      <img width='100%' height='300px' src='" . $image[image_path] . "'/>
    </div>
    ";
  }
  ?>
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>

  </div>