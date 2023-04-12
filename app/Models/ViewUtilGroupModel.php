<?php namespace App\Models;

use CodeIgniter\Model;

class ViewUtilGroupModel extends Model{

    protected $table = "vgroup_year_util";
    protected $db;
    protected $allowedFields = ['compId', 'group1', 'group2', 'tCapacity', 'tResult', 'tYear'];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}