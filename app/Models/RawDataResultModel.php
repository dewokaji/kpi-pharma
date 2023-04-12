<?php namespace App\Models;

use CodeIgniter\Model;

class RawDataResultModel extends Model{

    protected $table = "tresultrawdata";
    protected $db;
   protected $allowedFields = ['idRawData', 'tResult', 'tMonth', 'tYear', 'dCreate', 'compId'];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}