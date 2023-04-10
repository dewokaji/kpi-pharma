<?php namespace App\Models;

use CodeIgniter\Model;

class ViewKPIDataModel extends Model{

    //protected $table = "vkpitotargetdata";
    protected $table = "vkpitotargetdata_site";
    protected $db;
    protected $allowedFields = [''];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}