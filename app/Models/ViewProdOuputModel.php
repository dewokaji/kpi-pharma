<?php namespace App\Models;

use CodeIgniter\Model;

class ViewProdOuputModel extends Model{

    protected $table = "vresult_prod_output";
    protected $db;
    protected $allowedFields = [''];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

    public function view_prod($item= null, $tYear= null){

    }

}