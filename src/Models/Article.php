<?php
namespace App\Models;

use App\Connection\Connection;
use PDO;

class Article
{

    private $db;

    public function __construct()
    {
        $this->db = new Connection();
        $this->db = $this->db->getDb();
    }

    /**
     * read all articles  in database
     */

    public function readAll()
    {
        $query = 'SELECT * FROM articles ORDER BY id DESC';
        $stmt = $this->db->prepare($query);
        $stmt->execute();
        $articles = $stmt->fetchAll(PDO::FETCH_OBJ);
        return $articles;
    }

    /**
     * read a single article from database
     * @param $id
     */

    public function read_single($id)
    {
        $id = htmlspecialchars(strip_tags($id));
        $query = 'SELECT * FROM articles WHERE id=?';
        $stmt = $this->db->prepare($query);
        $stmt->bindParam(1, $this->id);
        $stmt->execute([$id]);
        $article = $stmt->fetch(PDO::FETCH_ASSOC);
        return $article;
    }

    /**
     * read most recent articles from database
     */

    public function mostRecent()
    {
        $query = 'SELECT * FROM articles ORDER BY published_on DESC LIMIT 3';
        $stmt = $this->db->prepare($query);
        $stmt->execute();
        $articles = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $articles;
    }

    /**
     * read top viewd articles from database
     */

    public function topViewd()
    {
        $query = 'SELECT * FROM articles ORDER BY views DESC LIMIT 5';
        $stmt = $this->db->prepare($query);
        $stmt->execute();
        $articles = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $articles;
    }

    /**
     * read Top viewd articles from database of a different id
     * @param $id
     */

    public function topViewDifId($id)
    {
        $id = htmlspecialchars(strip_tags($id));
        $query = 'SELECT * FROM articles WHERE id!=? ORDER BY views DESC LIMIT 5 ';
        $stmt = $this->db->prepare($query);
        $stmt->bindParam(1, $this->id);
        $stmt->execute([$id]);
        $articles = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $articles;
    }

    /**
     * update number of views of an article
     * @param $id
     */

    public function updateViews($id)
    {
        $id = htmlspecialchars(strip_tags($id));
        $query = ('UPDATE articles SET views=views+1 WHERE id=?');
        $stmt = $this->db->prepare($query);
        $stmt->bindParam(1, $id);
        $res = $stmt->execute();
        if ($res) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * read total number of likes for a single article in the database
     * @param $id
     */

    public function totalLikes($id)
    {
        $id = htmlspecialchars(strip_tags($id));
        $query = 'SELECT * FROM likes WHERE article_id=? && type=1';
        $stmt = $this->db->prepare($query);
        $stmt->bindParam(1, $this->id);
        $stmt->execute([$id]);
        $article_likes = $stmt->fetchAll(PDO::FETCH_ASSOC);
        if (count($article_likes) > 0) {
            return count($article_likes);
        } else {
            return 0;
        }
    }

    /**
     * read total number of unlikes for a single article in the database
     * @param $id
     */

    public function totalUnLikes($id)
    {
        $id = htmlspecialchars(strip_tags($id));
        $query = 'SELECT * FROM likes WHERE article_id=? && type=0';
        $stmt = $this->db->prepare($query);
        $stmt->bindParam(1, $this->id);
        $stmt->execute([$id]);
        $article_likes = $stmt->fetchAll(PDO::FETCH_OBJ);
        if (count($article_likes) > 0) {
            return count($article_likes);
        } else {
            return 0;
        }
    }

    /**
     * check if a user already liked a post or not
     * @param article $id
     *  @param  user $id
     */
    public function user_status($article_id, $user_id)
    {

        $user_id = htmlspecialchars(strip_tags($user_id));
        $article_id = htmlspecialchars(strip_tags($article_id));
        $query = 'SELECT * FROM likes WHERE article_id=? AND user_id=?';
        $stmt = $this->db->prepare($query);
        $stmt->bindParam(1, $this->article_id);
        $stmt->bindParam(1, $this->user_id);
        $stmt->execute([$article_id, $user_id]);
        $user_status = $stmt->fetchAll(PDO::FETCH_OBJ);
        if (count($user_status) > 0) {
            return $user_status;
        } else {
            return -1;
        }
    }

    /**
     * update number of likes/unlikes in  database
     * @param article $id
     *  @param  user $id
     *  @param  type
     */

    public function updateLikes($article_id, $user_id, $type)
    {
        $article_id = htmlspecialchars(strip_tags($article_id));
        $user_id = htmlspecialchars(strip_tags($user_id));
        $type = htmlspecialchars(strip_tags($type));
        $query = 'SELECT * FROM likes WHERE article_id=? AND user_id=?';
        $stmt = $this->db->prepare($query);
        $stmt->bindParam(1, $this->article_id);
        $stmt->bindParam(1, $this->user_id);
        $stmt->execute([$article_id, $user_id]);
        $user_status = $stmt->fetchAll(PDO::FETCH_OBJ);
        if (count($user_status) > 0) {
            $count = count($user_status);
        }

        if ($count == 0) {
            $query = "INSERT INTO likes(user_id,article_id,type) values(?,?,?)";
            $stmt = $this->db->prepare($query);
            $stmt->bindParam(1, $this->user_id);
            $stmt->bindParam(1, $this->article_id);
            $stmt->bindParam(1, $this->type);
            $stmt->execute([$user_id, $article_id, $type]);
        } else {
            $query = 'UPDATE likes SET type=? WHERE user_id=? && article_id=?';
            $stmt = $this->db->prepare($query);
            $stmt->bindParam(1, $this->type);
            $stmt->bindParam(1, $this->user_id);
            $stmt->bindParam(1, $this->article_id);
            $stmt->execute([$type, $user_id, $article_id]);
        }

        $totalLikes = $this->totalLikes($article_id);
        $totalUnLikes = $this->totalUnLikes($article_id);
        $return_arr = array('likes' => $totalLikes, 'unlikes' => $totalUnLikes);
        return $return_arr;
    }

}
