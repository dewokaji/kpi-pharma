<?php namespace App\Models;

use CodeIgniter\Model;

class ViewResultGrafikModel extends Model{

    protected $table = "tresultgrafik";
    protected $db;
    protected $allowedFields = [''];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}