<?php namespace App\Models;

use CodeIgniter\Model;

class ViewUtilGroup1Model extends Model{

    protected $table = "vresult_util_group1";
    protected $db;
    protected $allowedFields = [''];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}