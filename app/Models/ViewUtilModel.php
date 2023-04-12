<?php namespace App\Models;

use CodeIgniter\Model;

class ViewUtilModel extends Model{

    protected $table = "vresult_util_detail";
    protected $db;
    protected $allowedFields = [''];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}