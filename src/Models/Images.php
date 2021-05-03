<?php
namespace App\Models;
use App\Connection\Connection;
use PDO;

class Images
{

    private $db;

    // connection instence
    public function __construct()
    {
        $this->db = new Connection();
        $this->db = $this->db->getDb();
    }

    /**
     * get all images of an article from db
     * @param article $id
     */

    public function articleImages($article_id)
    {
        $query = 'SELECT * FROM images WHERE article_id=?';
        $stmt = $this->db->prepare($query);
        $stmt->bindParam(1, $this->article_id);
        $stmt->execute([$article_id]);
        $images = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $images;
    }
}
