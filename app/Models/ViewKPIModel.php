<?php namespace App\Models;

use CodeIgniter\Model;

class ViewKPIModel extends Model{

    protected $table = "vkpitotarget";
    protected $db;
    protected $allowedFields = [''];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

}