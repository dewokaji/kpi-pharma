<?php namespace App\Models;

use CodeIgniter\Model;

class ViewDataModel extends Model{

    //protected $table = "vdata";
    //Add by DY
    protected $table = "vdata_site";
    protected $db;
    protected $allowedFields = [''];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}