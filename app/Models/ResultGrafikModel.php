<?php namespace App\Models;

use CodeIgniter\Model;

class ResultGrafikModel extends Model{

    protected $table = "tresultgrafik";
    protected $db;
    //Add b y DY 15 Mar 23
    protected $allowedFields = ['idRawData','tResultMTD','tResultYTD','tMonth','tYear','dCreate','compId'];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}