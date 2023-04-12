<?php namespace App\Models;

use CodeIgniter\Model;

class ResultKPI extends Model{

    protected $table = "tresultkpi";
    protected $db;
    protected $allowedFields = ['idRawData','tResultMTD','tResultYTD','tMonth','tYear','dCreate','compId'];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}