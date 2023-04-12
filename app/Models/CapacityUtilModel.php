<?php namespace App\Models;

use CodeIgniter\Model;

class CapacityUtilModel extends Model{

    protected $table = "tresultutil";
    protected $db;
    protected $allowedFields = ['compId', 'lineId', 'tCapacity', 'tResult', 'tMonth', 'tYear', 'dCreate'];
    
    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}