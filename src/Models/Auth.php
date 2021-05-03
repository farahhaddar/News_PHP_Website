<?php

namespace App\Models;

session_start();

use App\Connection\Connection;
use App\Models\User;

class Auth
{
    private $db, $email, $password;

    /**
     * User constructor.
     */
    public function __construct()
    {
        $this->db = new Connection();
        $this->db = $this->db->getDb();

    }

    /**
     * Log the user into their account
     * @param $username
     * @param $password
     * @throws \Exception
     */
    public function login($email, $password)
    {
        $email = htmlspecialchars(strip_tags($email));
        $password = htmlspecialchars(strip_tags($password));
        $model = new User();
        $user = $model->getUser($email);
        if (password_verify($password,$user->password)) {
            error_log($user->id);
            $_SESSION['id'] = $user->id;
            error_log($_SESSION['id']);
            header('Location: ../index.php');
        } else {
            return 'wrong password';
        }

        exit();
    }

    /**
     * Logout Session
     */
    public function logout()
    {
        session_start();
        session_unset();
        session_destroy();
        return true;
    }

    /**
     * Validates user registration data and calls user store function
     * @param $email
     * @param $password
     */
    public function register($email, $password)
    {
        $model = new User();

        if (empty($email)) {
            $email_error = "* Email is required";
        } else {
            $email = $this->test_input($email);
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $email_error = "* Invalid email format";
            }
            if ($model->check_email($email)) {
                $email_error = "Email Already Registered";
            }
        }
        if (empty($password)) {
            $password_error = "* password is required";
        } else {
            $password = $this->test_input($_POST["password"]);
            if (strlen($password) < 8) {
                $password_error = " * password must be minimum 8 characters";
            }

        }

        if (!empty($email_error) || !empty($password_error)) {
            $return_arr = array('email_error' => $email_error, 'password_error' => $password_error);
            return $return_arr;
        }

        $result = $model->store($email, $password);
        if ($result) {
            $_SESSION['id'] = $result;
            header("location: ../../index.php");
        } else {
            echo 'Some Thing Went wrong';
        }

    }

    private function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

}
