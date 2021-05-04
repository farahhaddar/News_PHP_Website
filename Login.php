<?php
require_once realpath("vendor/autoload.php");
use App\Models\Auth;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email_error = $password_error = "";
    $email = $_POST['email'];
    $password = $_POST['password'];
    $model = new Auth();
    $error= $model->login($email, $password);
}
?>



<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <?php include_once "config/header.php"?>
</head>
<body>

<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
  <div class="container">
    <h1>Login</h1>
    <p>Please fill in this form to log into your account.</p>
    <hr>

    <div class="inpts">
   <span class="error"><?php echo $error; ?></span><br>
    <div>
    <label class='email'for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>
    </div>

    <div>
    <label class='psw' for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" id="psw" required>
    </div>
     </div>

    <div class="btn">
    <button type="submit" class="registerbtn">Login</button>
    </div>
   </div>
  
  <div class="container signin">
    <p>Don't have an account? <a href="/Register.php">Sign Up</a>.</p>
  </div>
</form>

</body>
</html>
