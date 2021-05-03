<?php
require_once realpath("vendor/autoload.php");
use App\Models\Auth;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email_error = $password_error = "";
    $email = $_POST['email'];
    $password = $_POST['password'];
    $model = new Auth();
    $error = $model->login($email, $password);
    if ($error) {
        $password_error=$errors;
        // print_r($errors);
        // foreach ($errors as $key => $value) {

        //     $email_error = $data[$key];
        //     $password_error = $data[$key];
        // }
    }
}

?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <?php include_once "config/header.php"?>

<style>
    .error{
        color:red;
    }
</style>
</head>
<body>
<!-- header -->
<?php include_once 'Views/TopHeader.php'?>

<div class="container ">
<h3> Welcome! Please Log In</h3>
<form id="Register" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
         <span class="error"><?php echo $email_error; ?></span><br>
          <label for="email">
             Email:
            </label>
            <br>
            </span>
            <input id="email" name="email" type="text" required><br>
            <span class="error"><?php echo $password_error; ?></span><br>
            <label for="password">Password:</label>
            <input id="password" name="password" type="password" required>
            <br />
            <input type="submit"  class="btn" name="Register" value="Register">
        </form>
        </div>

<!-- footer -->
<?php include_once 'Views/Footer.php'?>

</body>
</html>