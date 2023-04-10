<?php namespace App\Models;

use CodeIgniter\Model;

class ResultKPI extends Model{

    protected $table = "tresultkpi";
    protected $db;
    //Add by DY 1 Mar 23
    //protected $allowedFields = ['idRawData','tResultMTD','tResultYTD','tMonth','tYear','dCreate'];
    protected $allowedFields = ['idRawData','tResultMTD','tResultYTD','tMonth','tYear','dCreate','compId'];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}