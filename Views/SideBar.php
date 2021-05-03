 <div class="side-posts-container">
    <?php
     foreach ($topViewd as $article) {
        echo " <a class='links' href='details.php?id=" . $article[id] . "&view=true'>
                <div class='post-content-container'>
                <div class='post-content'>
                <img class='image' src='" . $article[cover_image] . "'/>
                    <div class='post-text'>
                    <div class='topView'>$article[title]</div></a>
                    <div class='date'>$article[published_on]</div>
                </div>
                </div>
                </div>";}
    ?>
</div>