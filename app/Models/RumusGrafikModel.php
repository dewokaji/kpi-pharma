<?php namespace App\Models;

use CodeIgniter\Model;

class RumusGrafikModel extends Model{

    protected $table = "mrumusgrafik";
    protected $db;
    protected $allowedFields = [''];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}