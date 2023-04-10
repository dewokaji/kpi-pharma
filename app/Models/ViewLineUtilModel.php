<?php namespace App\Models;

use CodeIgniter\Model;

class ViewLineUtilModel extends Model{

    //protected $table      = 'vline_result_util';
    //protected $allowedFields = ['tUtil'];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

    public function get_result_util($lineId= null, $tYear= null){
        $result = $this->db->table('vline_result_util')
         ->where('lineId',$lineId)
         ->where('tYear',$tYear)
         ->get()->getResultArray(); 

         if($result){
            //return $result[0]['tUtil'];
            return $result;
            
         }else{
            return 0;
         }
    }

    public function export_result_util($tYear= null){
        $result = $this->db->table('vline_result_util')
         ->where('tYear',$tYear)
         ->get()->getResultArray(); 

         if($result){
            //return $result[0]['tUtil'];
            return $result;
            
         }else{
            return 0;
         }
    }

}