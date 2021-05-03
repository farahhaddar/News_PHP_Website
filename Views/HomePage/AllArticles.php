<div style="display:flex;flex-wrap:wrap;margin:auto">

<?php
foreach ($all as $article) {
    echo "<div class='card-a' >
     <a  class='links' href='details.php?id=" . $article->id ."&view=true'>
    <p> $article->title</p>
    </a>
    <div class='date'>
    <i class='fas fa-calendar-week'></i>
    $article->published_on
    </div>

  </div>";

}?>



</div>