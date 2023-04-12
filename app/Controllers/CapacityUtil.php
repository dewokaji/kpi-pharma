<?php 
namespace App\Controllers;

use App\Controllers\BaseControllers;
use App\Models\MasterModel;
use CodeIgniter\API\ResponseTrait;
use App\Models\ViewModel;
use App\Models\RawDataResultModel;
use App\Models\ViewUtilModel;
use App\Models\CapacityUtilModel;
use App\Models\ViewLineUtilModel;
use App\Models\ViewUtilGroup1Model;
use App\Models\ViewUtilGroup2Model;
use App\Models\ViewUtilGroupModel;

class CapacityUtil extends BaseController
{	
	use ResponseTrait;

	public function construct()
	{
		$session = \Config\Services::session();
        $db = \Config\Database::connect();
	}

	public function show_cap_util()
	{
		$session = \Config\Services::session();

		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}

		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'View'])
		];
		$data['tYear'] = $session->get('tYear');
		$data['dept'] = $session->get('dept');
		$data['compId'] = $session->get('compId');
		
		$View = new ViewUtilModel();
		$ViewGroup1 = new ViewUtilGroup1Model();
		$ViewGroup2 = new ViewUtilGroup2Model();
		if(!$data['tYear'])
		{
			$data['tYear'] = '2022';
		}
		if ($data['dept'] == 'MSTD')
		{
			$data['datas'] = $View->getWhere(['tYear'=>$data['tYear'], 'compId'=>$data['compId']])->getResultArray();
			$data['datagroup1'] = $ViewGroup1->getWhere(['tYear'=>$data['tYear'], 'compId'=>$data['compId']])->getResultArray();
			$data['datagroup2'] = $ViewGroup2->getWhere(['tYear'=>$data['tYear'], 'compId'=>$data['compId']])->getResultArray();
		}
		else
		{
			$data['datas'] = $View->getWhere(['tYear'=>$data['tYear'],'dept'=>$data['dept'], 'compId'=>$data['compId']])->getResultArray();
		}
		
		return view ('Master/View-Input-Util', $data);
		
	}

	public function helper_y_util($lineId= null, $tYear= null){

		$lineUtilModel = new ViewLineUtilModel;
    	$result = $lineUtilModel->get_result_util($lineId, $tYear);

		$tResult = $result[0]['tResult'];
		$tCapacity	=  $result[0]['tCapacity'];

		if($tCapacity == 0){
			return $util = 0;
		}else{
			$util	= $tResult / $tCapacity * 100;
			return substr(number_format($util,2),0,5);
		}
		
	}

	public function helper_y_util_group($group= null, $groupLine=null, $tYear= null){
				
		$groupUtilModel = new ViewUtilGroupModel;
		if($group == 1){
			$result = $groupUtilModel->getWhere(['group1'=>$groupLine,'tYear'=>$tYear])->getResultArray();
			
		}elseif($group == 2){
			$result = $groupUtilModel->getWhere(['group2'=>$groupLine,'tYear'=>$tYear])->getResultArray();
		}
		
		$tResult = $result[0]['tResult'];
		$tCapacity	=  $result[0]['tCapacity'];
		
		if($tCapacity == 0){
			return $util = 0;
		}else{
			$util	= $tResult / $tCapacity * 100;
			return substr(number_format($util,2),0,5);
		}
	}

	
	public function input_detail()
	{
		$session = \Config\Services::session();

		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}

		$db = \Config\Database::connect();
		$validation = \Config\Services::validation();

		$validation->setRules(['product_id'=>'required','product_name'=>'required']);
		$isDataValid = $validation->withRequest(\Config\Services::request())->run();

		$request = \Config\Services::request();
		$data['lineId'] = $request->getpost()['product_id'];
		$data['tMonth'] = $request->getpost()['bulan'];
		$data['tYear'] = $request->getpost()['product_name'];
		$data['tCapacity'] = $request->getpost()['capacity_unit'];
		$data['tResult'] = $request->getpost()['actual_output'];
		$data['dCreate'] = date("Y-m-d h:i:s");

		$data['compId'] = $session->get('compId');
		

		if($isDataValid){
			$result = new CapacityUtilModel();
			$hasil = $result->getWhere(['lineId'=>$data['lineId'],'tMonth'=>$data['tMonth'],'tYear'=>$data['tYear']])->getResultArray();
			
			for ($i=0;$i < count($hasil) ; $i++)
			{
				$result->delete($hasil[$i]['id']);
			}

			$hasil = $result->insert($data);
			
		}else{
			echo "Ada data yang belum di isi";
		}
		return redirect("Capacity-Util", 'refresh');
		
	}

	
	public function export_excel_util()
	{
		$session = \Config\Services::session();
		$request = \Config\Services::request();

		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}
		
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'Dashboard'])
		];
		$data['tYear'] = $request->getpost()['tYear'];
		$data['compId'] = $session->get('compId');
		$yearprev		= $data['tYear'] - 1;
		$yearprev2		= $data['tYear'] - 2;

		//ViewUtilModel
		$viewUtil = new ViewUtilModel();
		$ViewGroup1 = new ViewUtilGroup1Model();
		$ViewGroup2 = new ViewUtilGroup2Model();
		$data['datas'] = $viewUtil->getWhere(['tYear'=>$data['tYear'],'compId'=>$data['compId']])->getResultArray();
		$data['datagroup1'] = $ViewGroup1->getWhere(['tYear'=>$data['tYear'], 'compId'=>$data['compId']])->getResultArray();
		$data['datagroup2'] = $ViewGroup2->getWhere(['tYear'=>$data['tYear'], 'compId'=>$data['compId']])->getResultArray();
		 
		helper('my_helper.php');
		
		$date = date("dmY");
		header("Content-type: application/vnd-ms-excel");
		header("Content-Disposition: attachment; filename=Capacity Utilization".$date.".xls");

		echo ("<table border='1' style='font-family:tahoma;font: size 11px;'>");
		echo ("
		<tr>
			<td rowspan ='2'><b>Line Produksi</b></td>
			<td rowspan ='2'><b>FY ".$yearprev2." (%)</b></td>
			<td rowspan ='2'><b>FY ".$yearprev." (%)</b></td>
			<td rowspan ='2'><b>Tahun ".$data['tYear']." (%)</b></td>
			<td colspan='3' style='text-align: center'><b>JAN</b></td>
			<td colspan='3' style='text-align: center'><b>FEB</b></td>
			<td colspan='3' style='text-align: center'><b>MAR</b></td>
			<td colspan='3' style='text-align: center'><b>APR</b></td>
			<td colspan='3' style='text-align: center'><b>MAY</b></td>
			<td colspan='3' style='text-align: center'><b>JUN</b></td>
			<td colspan='3' style='text-align: center'><b>JUL</b></td>
			<td colspan='3' style='text-align: center'><b>AUG</b></td>
			<td colspan='3' style='text-align: center'><b>SEP</b></td>
			<td colspan='3' style='text-align: center'><b>OCT</b></td>
			<td colspan='3' style='text-align: center'><b>NOV</b></td>
			<td colspan='3' style='text-align: center'><b>DES</b></td>
			
		</tr>
	f
		<tr>
			
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
			<td>Capacity</td>
			<td>Result</td>
			<td>%</td>
		</tr>");

		foreach ($data['datas'] as $rows)
		{
			$util_prev2 = util_result($rows['lineId'], $rows['tYear']-2);
            $util_prev  = util_result($rows['lineId'], $rows['tYear']-1);
            $util_cur   = util_result($rows['lineId'], $rows['tYear']);
			$utilJan	= number_format((($rows['mJan'] / max($rows['mJan2'], 1)) * 100),2);

			echo("<tr>");
			echo("<td>".$rows['lineName']."</td>");
			echo("<td>".$util_prev2."</td>");
			echo("<td>".$util_prev."</td>");
			echo("<td>".$util_cur."</td>");

			echo("<td>".number_format($rows['mJan2'],2)."</td>");
			echo("<td>".number_format($rows['mJan'],2)."</td>");
			echo("<td>".number_format((($rows['mJan'] / max($rows['mJan2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mFeb2'],2)."</td>");
			echo("<td>".number_format($rows['mFeb'],2)."</td>");
			echo("<td>".number_format((($rows['mFeb'] / max($rows['mFeb2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mMar2'],2)."</td>");
			echo("<td>".number_format($rows['mMar'],2)."</td>");
			echo("<td>".number_format((($rows['mMar'] / max($rows['mMar2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mApr2'],2)."</td>");
			echo("<td>".number_format($rows['mApr'],2)."</td>");
			echo("<td>".number_format((($rows['mApr'] / max($rows['mApr2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mMei2'],2)."</td>");
			echo("<td>".number_format($rows['mMei'],2)."</td>");
			echo("<td>".number_format((($rows['mMei'] / max($rows['mMei2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mJun2'],2)."</td>");
			echo("<td>".number_format($rows['mJun'],2)."</td>");
			echo("<td>".number_format((($rows['mJun'] / max($rows['mJun2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mJul2'],2)."</td>");
			echo("<td>".number_format($rows['mJul'],2)."</td>");
			echo("<td>".number_format((($rows['mJul'] / max($rows['mJul2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mAug2'],2)."</td>");
			echo("<td>".number_format($rows['mAug'],2)."</td>");
			echo("<td>".number_format((($rows['mAug'] / max($rows['mAug2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mSep2'],2)."</td>");
			echo("<td>".number_format($rows['mSep'],2)."</td>");
			echo("<td>".number_format((($rows['mSep'] / max($rows['mSep2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mOkt2'],2)."</td>");
			echo("<td>".number_format($rows['mOkt'],2)."</td>");
			echo("<td>".number_format((($rows['mOkt'] / max($rows['mOkt2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mNov2'],2)."</td>");
			echo("<td>".number_format($rows['mNov'],2)."</td>");
			echo("<td>".number_format((($rows['mNov'] / max($rows['mNov2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($rows['mDes2'],2)."</td>");
			echo("<td>".number_format($rows['mDes'],2)."</td>");
			echo("<td>".number_format((($rows['mDes'] / max($rows['mDes2'], 1)) * 100),2)."</td>");
			
			echo("</tr>");
		}

		echo('<tr><td colspan="40"><b> Summary Sediaan ke-2</b></td></tr>');

		// Grouping 1
		foreach ($data['datagroup1'] as $data1)
		{
			$util1_prev2 = util_year_group(1, $data1['group1'], $data1['tYear']-2);
            $util1_prev  = util_year_group(1, $data1['group1'], $data1['tYear']-1);
            $util1_cur   = util_year_group(1, $data1['group1'], $data1['tYear']);

			echo("<tr>");
			echo("<td>".$data1['group1']."</td>");
			echo("<td>".$util1_prev2."</td>");
			echo("<td>".$util1_prev."</td>");
			echo("<td>".$util1_cur."</td>");

			echo("<td>".number_format($data1['mJan2'],2)."</td>");
			echo("<td>".number_format($data1['mJan'],2)."</td>");
			echo("<td>".number_format((($data1['mJan'] / max($data1['mJan2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mFeb2'],2)."</td>");
			echo("<td>".number_format($data1['mFeb'],2)."</td>");
			echo("<td>".number_format((($data1['mFeb'] / max($data1['mFeb2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mMar2'],2)."</td>");
			echo("<td>".number_format($data1['mMar'],2)."</td>");
			echo("<td>".number_format((($data1['mMar'] / max($data1['mMar2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mApr2'],2)."</td>");
			echo("<td>".number_format($data1['mApr'],2)."</td>");
			echo("<td>".number_format((($data1['mApr'] / max($data1['mApr2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mMei2'],2)."</td>");
			echo("<td>".number_format($data1['mMei'],2)."</td>");
			echo("<td>".number_format((($data1['mMei'] / max($data1['mMei2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mJun2'],2)."</td>");
			echo("<td>".number_format($data1['mJun'],2)."</td>");
			echo("<td>".number_format((($data1['mJun'] / max($data1['mJun2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mJul2'],2)."</td>");
			echo("<td>".number_format($data1['mJul'],2)."</td>");
			echo("<td>".number_format((($data1['mJul'] / max($data1['mJul2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mAug2'],2)."</td>");
			echo("<td>".number_format($data1['mAug'],2)."</td>");
			echo("<td>".number_format((($data1['mAug'] / max($data1['mAug2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mSep2'],2)."</td>");
			echo("<td>".number_format($data1['mSep'],2)."</td>");
			echo("<td>".number_format((($data1['mSep'] / max($data1['mSep2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mOkt2'],2)."</td>");
			echo("<td>".number_format($data1['mOkt'],2)."</td>");
			echo("<td>".number_format((($data1['mOkt'] / max($data1['mOkt2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mNov2'],2)."</td>");
			echo("<td>".number_format($data1['mNov'],2)."</td>");
			echo("<td>".number_format((($data1['mNov'] / max($data1['mNov2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data1['mDes2'],2)."</td>");
			echo("<td>".number_format($data1['mDes'],2)."</td>");
			echo("<td>".number_format((($data1['mDes'] / max($data1['mDes2'], 1)) * 100),2)."</td>");
			
			echo("</tr>");
		}

		echo('<tr><td colspan="40"><b> Summary Sediaan ke-1</b></td></tr>');

		// Grouping 2
		foreach ($data['datagroup2'] as $data2)
		{
			$util1_prev2 = util_year_group(1, $data2['group1'], $data2['tYear']-2);
            $util1_prev  = util_year_group(1, $data2['group1'], $data2['tYear']-1);
            $util1_cur   = util_year_group(1, $data2['group1'], $data2['tYear']);

			echo("<tr>");
			echo("<td>".$data2['group2']."</td>");
			echo("<td>".$util1_prev2."</td>");
			echo("<td>".$util1_prev."</td>");
			echo("<td>".$util1_cur."</td>");

			echo("<td>".number_format($data2['mJan2'],2)."</td>");
			echo("<td>".number_format($data2['mJan'],2)."</td>");
			echo("<td>".number_format((($data2['mJan'] / max($data2['mJan2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mFeb2'],2)."</td>");
			echo("<td>".number_format($data2['mFeb'],2)."</td>");
			echo("<td>".number_format((($data2['mFeb'] / max($data2['mFeb2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mMar2'],2)."</td>");
			echo("<td>".number_format($data2['mMar'],2)."</td>");
			echo("<td>".number_format((($data2['mMar'] / max($data2['mMar2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mApr2'],2)."</td>");
			echo("<td>".number_format($data2['mApr'],2)."</td>");
			echo("<td>".number_format((($data2['mApr'] / max($data2['mApr2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mMei2'],2)."</td>");
			echo("<td>".number_format($data2['mMei'],2)."</td>");
			echo("<td>".number_format((($data2['mMei'] / max($data2['mMei2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mJun2'],2)."</td>");
			echo("<td>".number_format($data2['mJun'],2)."</td>");
			echo("<td>".number_format((($data2['mJun'] / max($data2['mJun2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mJul2'],2)."</td>");
			echo("<td>".number_format($data2['mJul'],2)."</td>");
			echo("<td>".number_format((($data2['mJul'] / max($data2['mJul2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mAug2'],2)."</td>");
			echo("<td>".number_format($data2['mAug'],2)."</td>");
			echo("<td>".number_format((($data2['mAug'] / max($data2['mAug2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mSep2'],2)."</td>");
			echo("<td>".number_format($data2['mSep'],2)."</td>");
			echo("<td>".number_format((($data2['mSep'] / max($data2['mSep2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mOkt2'],2)."</td>");
			echo("<td>".number_format($data2['mOkt'],2)."</td>");
			echo("<td>".number_format((($data2['mOkt'] / max($data2['mOkt2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mNov2'],2)."</td>");
			echo("<td>".number_format($data2['mNov'],2)."</td>");
			echo("<td>".number_format((($data2['mNov'] / max($data2['mNov2'], 1)) * 100),2)."</td>");

			echo("<td>".number_format($data2['mDes2'],2)."</td>");
			echo("<td>".number_format($data2['mDes'],2)."</td>");
			echo("<td>".number_format((($data2['mDes'] / max($data2['mDes2'], 1)) * 100),2)."</td>");
			
			echo("</tr>");
		}
		
	}
	
	//--------------------------------------------------------------------

}
