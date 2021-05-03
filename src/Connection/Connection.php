<?php
namespace App\Connection;
use PDO;
use PDOException;


class Connection
{
    private $conn;
    private $error;
    private $host = 'localhost';
    private $dbname = 'news';
    private $user = 'admin';
    private $password = '12345678';
    private $options;

    public function __construct()
    {

        $dsn = 'mysql:host=' . $this->host . ';dbname=' . $this->dbname;
        $this->options = array(
            PDO::ATTR_PERSISTENT => true,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_EMULATE_PREPARES => false,
        );

        try {
            $this->conn = new PDO($dsn, $this->user, $this->password, $this->options);
            return $this->conn;

        } catch (PDOException $e) {
            $this->error = $e->getMessage();
            echo $this->error;
        }
    }
    
    public function getDb()
    {
        if ($this->conn instanceof PDO) {
            return $this->conn;
        }
    }

    public function closeConnection()
    {
        $this->conn = null;
    }

}
