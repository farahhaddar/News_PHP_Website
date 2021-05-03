<div class="cards-container">
  <?php
foreach ($mostrecent as $article) {
    echo
        "<div class='card'>
         <img width='100%' src='" . $article[cover_image] . "'/>
         <div class='cardcontent'>
          <p class='cardTitle'>$article[title]</p>
            <div class='autherCard'>
            <div>
            <div>
              <span class='authorinfo'>By </span>
              <span class='auther'>$article[author]</span>
              </div>
            </div>
              <span class='authorinfoBar'></span>
              <span  class='authorinfo'>$article[published_on]</span>
            </div>
            <div class='text'>$article[short_description] </div>
            </div>
            <div class='cardfooter' >
              <div class='cardstat'> 
               <i class='far fa-eye '></i>
                $article[views]
               </div>

    
                  <div class='readmore'>
                  <a class='links'href='details.php?id=" . $article[id] ."&view=true'>Read More >></a>
                  </div>
                </div>

      </div>";
}

?>
</div>