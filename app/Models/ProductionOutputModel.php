<?php namespace App\Models;

use CodeIgniter\Model;

class ProductionOutputModel extends Model{

    protected $table = "tresultproductitem";
    protected $db;
    protected $allowedFields = ['compId', 'pItemId', 'pOutputActual', 'pOutputBudget', 'tMonth', 'tYear', 'dCreate'];
    

    public function _construct()
    {
        $this->db = \Config\Database::connect();
 
    }

    public function updateBudget($id, $qty_unit) {
        $this->db->set('pOutputBudget', $qty_unit)
                       ->where('id', $id)
                       ->update();               
                       
    }

    public function updateActual($id, $qty_unit) {
        $this->builder->set('pOutputActual', $qty_unit)
                       ->where('id', $id)
                       ->update();
      }

}