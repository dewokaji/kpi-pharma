<?php namespace App\Models;

use CodeIgniter\Model;

class CapacityUtilModel extends Model{

    protected $table = "tresultutil";
    protected $db;
    //id, compId, lineId, tCapacity, tResult, tUtil, tMonth, tYear
    protected $allowedFields = ['compId', 'lineId', 'tCapacity', 'tResult', 'tMonth', 'tYear', 'dCreate'];
    
    //protected $allowedFields = ['idRawData', 'tResult', 'tMonth', 'tYear', 'dCreate', 'compId'];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}