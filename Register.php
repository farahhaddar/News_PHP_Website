<?php
require_once realpath("vendor/autoload.php");
use App\Models\Auth;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email_error = $password_error = "";
    $email = $_POST['email'];
    $password = $_POST['password'];
    $model = new Auth();
    $errors = $model->register($email, $password);
    if($errors){
     $values=array_values($errors);
     $email_error=$values[0];
     $password_error= $values[1];
     }
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
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <div class="inpts">
    <div>
    <span class="error"><?php echo $email_error;  ?></span><br>
    <label class='email'for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>
    </div>
    <div>
    <span class="error"><?php echo $password_error; ?></span><br>
    <label class='psw' for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" id="psw" required>
    </div>
     </div>

    <div class="btn">
    <button type="submit" class="registerbtn">Register</button>
    </div>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="/Login.php">Sign in</a>.</p>
  </div>
</form>

</body>
</html>
