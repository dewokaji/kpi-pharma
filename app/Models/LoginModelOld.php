<?php namespace App\Models;

use CodeIgniter\Model;

class LoginModel extends Model{
    protected $table      = 'mlogin';
    protected $allowedFields = ['email','namauser','mpassword','dept','iUsed','dCreate', 'compId'];

    public function _construct()
    {
        $this->db = \Config\Database::connect();
    }
}