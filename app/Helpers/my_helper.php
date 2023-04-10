<?php
function format_rupiah($angka){
  $rupiah=number_format($angka,0,',','.');
  return $rupiah;
}

function util_prev_year($year){
  //return '10000';
 $db = \Config\Database::connect();
 //$db = $this->db = \Config\Database::connect();
  $builder = $db->table('tresultutil');
  //loading query builder

  $output = $builder->table('tresultutil')
        ->select('tResult')
        ->where('tYear =', $year)
        ->get();
  return $output = $output->getResultArray();
}

function util_result($lineId, $tYear)
{
  $UtilController = new \App\Controllers\CapacityUtil;
  $result = $UtilController->helper_y_util($lineId, $tYear);
    if($result){
      //return 1;
      //$result = $hasil[0]['tUtil'];
      return $result;
    }else{
      return 0;
    }
   
}

function util_year_group($group, $groupLine, $tYear)
{
  $UtilController = new \App\Controllers\CapacityUtil;
  $result = $UtilController->helper_y_util_group($group,$groupLine, $tYear);
    if($result){
      //return 1;
      //$result = $hasil[0]['tUtil'];
      return $result;
    }else{
      return 0;
    }
   
}


function colour_min ($util = 0){
  if($util < 67){
    //green
    return 'style= "background-color:   #8dff33;"';
  }elseif($util > 66 && $util < 100){
    // yellow
    return 'style= "background-color:  #fcff33;"';
  }elseif($util > 99){
    //red
    return 'style= "background-color: #fc6b40;"';
  }
}
?>
