<?php namespace App\Models;

use CodeIgniter\Model;

class ViewModel extends Model{

    //protected $table = "vrawdata";
    protected $table = "vdataraw";
    protected $db;
    protected $allowedFields = [''];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}