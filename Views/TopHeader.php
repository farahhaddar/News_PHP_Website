<div class="header">
  <div>
  <h1>White Beard Task</h1>
  </div >
  <div class='header-btn'>
 <?php if(isset($_SESSION['id'])){
   echo '<span id="logout"><i  class="fas fa-sign-in-alt"></i>Logout </span>';
 }else{
   ?>
   <span  onclick="window.location.href='/Login.php'">
    <i class="fas fa-sign-in-alt"></i>Login
  </span>
<?php
  }
?>
</div>
</div>
 
