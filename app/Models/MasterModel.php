<?php namespace App\Models;

use CodeIgniter\Model;

class MasterModel extends Model{

    protected $table = "mrawdata";
    protected $db;
    protected $allowedFields = ['dept', 'vKet', 'dEffectiveDate', 'iUsed', 'dCreate'];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}