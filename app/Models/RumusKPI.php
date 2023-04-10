<?php namespace App\Models;

use CodeIgniter\Model;

class RumusKPI extends Model{

    protected $table = "mrumuskpi";
    protected $db;
    protected $allowedFields = [''];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}
