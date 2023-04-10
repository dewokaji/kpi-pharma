<?php namespace App\Models;

use CodeIgniter\Model;

class ProductionOutputModel extends Model{

    protected $table = "tresultproductitem";
    protected $db;
    protected $allowedFields = ['compId', 'pItemId', 'pOutputActual', 'pOutputBudget', 'tMonth', 'tYear', 'dCreate'];
    

    public function _construct()
    {
        $this->db = \Config\Database::connect();

        //$db      = \Config\Database::connect();
		//$this->builder = $db->table('tresultproductitem'); 
    }

    public function updateBudget($id, $qty_unit) {
        //return 
        $this->db->set('pOutputBudget', $qty_unit)
                       ->where('id', $id)
                       ->update();

        //$this->builder->set('pOutputBudget', $qty_number)
                       
                       
    }

    public function updateActual($id, $qty_unit) {
        $this->builder->set('pOutputActual', $qty_unit)
                       ->where('id', $id)
                       ->update();
      }

}