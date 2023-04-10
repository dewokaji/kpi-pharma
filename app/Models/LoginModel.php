<?php 
namespace App\Models;

use CodeIgniter\Model;

class LoginModel extends Model{

    //protected $table      = 'mlogin';
    //protected $allowedFields = ['email','namauser','mpassword','dept','iUsed','dCreate', 'compId'];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }

    public function getLogin($userName=null, $password=null)
    {
         return $this->db->table('mlogin')
         ->join('mcompany','mlogin.compId=mcompany.compId')
         ->where('mlogin.email',$userName)
         ->where('mlogin.mpassword',$password)
         ->get()->getResultArray(); 
    }
}