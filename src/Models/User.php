<?php

namespace App\Models;

use App\Connection\Connection;
use Exception;
use PDO;
use PDOStatement;

class User
{

    private $db;

    /**
     * User constructor.
     */
    public function __construct()
    {
        $this->db = new connection();
        $this->db = $this->db->getDb();
    }
     /**
     * check if email exists in db
     */
    public function check_email($email)
    {
        try {
            $stmt = $this->db->prepare('SELECT * FROM users WHERE email = ?');
            $stmt->bindParam(1, $email);
            $stmt->execute([$email]);
            $user = $stmt->fetch(PDO::FETCH_OBJ);
            if($user){
                return true;
            }else{
                return false;
            }
        } catch (\PDOException $exception){
            echo 'Internal Error';
            exit();
        }
    }

    
  

    /**
     * Get User by email
     * @param  $email
     * @return $user
     * @throws Exception
     */
    public function getUser($email)
    {
        try {
            $stmt = $this->db->prepare('SELECT * FROM users WHERE email = ?');
            $stmt->execute([$email]);
            $user = $stmt->fetch(PDO::FETCH_OBJ);
            if ($user) {
             return $user;
            }else{
             return false;
            }
        } catch (\PDOException $exception) {
            echo 'Internal Error';
            exit();
        }
        
    }


    /**
     * Store user record in database
     * @param $email
     * @param $password
     */
    public function store($email, $password)
    {
        $password = password_hash($password, PASSWORD_DEFAULT);
        try {
            $query = 'INSERT INTO users (email, password) VALUES (?, ?)';
            $stmt = $this->db->prepare($query);
            if($stmt->execute([$email, $password])){
                return $this->db->lastInsertId();
            }else{
                return false;
            }
        } catch (\PDOException $exception) {
            echo 'Internal Error';
            exit();
        }
    }

}
