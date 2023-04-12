<?php 
namespace App\Controllers;

use App\Controllers\BaseControllers;
use App\Models\MasterModel;
use CodeIgniter\API\ResponseTrait;
use App\Models\ViewModel;
use App\Models\RawDataResultModel;
use App\Models\ViewUtilModel;
use App\Models\ProductionOutputModel;
use App\Models\ViewProdOuputModel;

class ProdOutput extends BaseController
{	
	use ResponseTrait;

	public function construct()
	{
		$session = \Config\Services::session();
        $db = \Config\Database::connect();
	}

	public function index()
	{
		$session = \Config\Services::session();

		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}

		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Master']),
			'page_title' => view('partials/page-title', ['title' => 'Master', 'pagetitle' => 'Master'])
		];
		return view ('Master/index', $data);
	}

	public function show_prod_out()
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
		
		$View = new ViewProdOuputModel();

		if(!$data['tYear'])
		{
			$data['tYear'] = '2022';
		}

		$data['datas'] = $View->getWhere(['tYear'=>$data['tYear'], 'compId'=>$data['compId']])->getResultArray();
		$data['datas_prev'] = $View->getWhere(['tYear'=>$data['tYear'] - 1, 'compId'=>$data['compId']])->getResultArray();

		return view ('Master/View-Prod-Output', $data);

		
	}

	public function input_qty()
	{
        $session = \Config\Services::session();

		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}

		$db = \Config\Database::connect();
		$validation = \Config\Services::validation();
		$validation->setRules(['product_id'=>'required','product_name'=>'required','opsi'=>'required','qty_unit'=>'required']);
		$isDataValid = $validation->withRequest(\Config\Services::request())->run();

		$request = \Config\Services::request();
		$data['pItemId'] = $request->getpost()['product_id'];
		$data['tMonth'] = $request->getpost()['bulan'];
		$data['tYear'] = $request->getpost()['product_name'];
		$data['dCreate'] = date("Y-m-d h:i:s");
		$qty_unit = $request->getpost()['qty_unit'];
		$opsi = $request->getpost()['opsi'];
		
		$data['compId'] = $session->get('compId');

		if($isDataValid){
			$result = new ProductionOutputModel();
			$hasil = $result->getWhere(['pItemId'=>$data['pItemId'],'tMonth'=>$data['tMonth'],'tYear'=>$data['tYear']])->getResultArray();
			
			if($hasil){
				for ($i=0;$i < count($hasil) ; $i++)
					{
						if($opsi == "Budget"){
							$result->where('id', $hasil[$i]['id'])->set(['pOutputBudget'=> $qty_unit,'dCreate'=> $data['dCreate']])->update();

						}elseif($opsi == "Actual"){
							$result->where('id', $hasil[$i]['id'])->set(['pOutputActual'=> $qty_unit,'dCreate'=> $data['dCreate']])->update();
						}
					}

			}else{

				if($opsi == "Budget"){
					$data['pOutputBudget'] = $qty_unit;

				}elseif($opsi == "Actual"){
					$data['pOutputActual'] = $qty_unit;

				}
				$hasil = $result->insert($data);
			}
		}
		else
		{
			echo "Ada data yang belum di isi";
		}
		return redirect("Production-Output", 'refresh');
		
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

	
	
	public function export_excel_prod()
	{
		$session = \Config\Services::session();

		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}
		$request = \Config\Services::request();
		
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'Dashboard'])
		];
		$data['tYear'] = $request->getpost()['tYear'];
		$data['compId'] = $session->get('compId');
		$yearprev		= $data['tYear'] - 1;
		$yearprev2		= $data['tYear'] - 2;

		$View = new ViewProdOuputModel();
		$data['datas'] = $View->getWhere(['tYear'=>$data['tYear'], 'compId'=>$data['compId']])->getResultArray();
		$data['datas_prev'] = $View->getWhere(['tYear'=>$data['tYear'] - 1, 'compId'=>$data['compId']])->getResultArray();
		 
		helper('my_helper.php');
		
		$date = date("dmY");
		header("Content-type: application/vnd-ms-excel");
		header("Content-Disposition: attachment; filename=Production Output Unit".$date.".xls");

		echo ("<table border='1' style='font-family:tahoma;font: size 11px;'>");
		echo ("
			<tr>
			<td rowspan ='2'>Production</td>
			<td rowspan='2'>Tahun</td>
			<td colspan='2' style='text-align: center'><b>JAN</b></td>
			<td colspan='2' style='text-align: center'><b>FEB</b></td>
			<td colspan='2' style='text-align: center'><b>MAR</b></td>
			<td colspan='2' style='text-align: center'><b>APR</b></td>
			<td colspan='2' style='text-align: center'><b>MAY</b></td>
			<td colspan='2' style='text-align: center'><b>JUN</b></td>
			<td colspan='2' style='text-align: center'><b>JUL</b></td>
			<td colspan='2' style='text-align: center'><b>AUG</b></td>
			<td colspan='2' style='text-align: center'><b>SEP</b></td>
			<td colspan='2' style='text-align: center'><b>OCT</b></td>
			<td colspan='2' style='text-align: center'><b>NOV</b></td>
			<td colspan='2' style='text-align: center'><b>DEC</b></td>
			</tr>
			<tr>
			
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			<td>Budget</td>
			<td>Actual</td>
			</tr>");

		foreach ($data['datas'] as $rows)
		{

			echo("<tr>");
			echo("<td>".$rows['pItemName']."</td>");
			echo("<td>".$rows['tYear']."</td>");
			echo("<td>".number_format($rows['mJan'],2)."</td>");
			echo("<td>".number_format($rows['mJan2'],2)."</td>");
			echo("<td>".number_format($rows['mFeb'],2)."</td>");
			echo("<td>".number_format($rows['mFeb2'],2)."</td>");
			echo("<td>".number_format($rows['mMar'],2)."</td>");
			echo("<td>".number_format($rows['mMar2'],2)."</td>");
			echo("<td>".number_format($rows['mApr'],2)."</td>");
			echo("<td>".number_format($rows['mApr2'],2)."</td>");
			echo("<td>".number_format($rows['mMay'],2)."</td>");
			echo("<td>".number_format($rows['mMay2'],2)."</td>");
			echo("<td>".number_format($rows['mJun'],2)."</td>");
			echo("<td>".number_format($rows['mJun2'],2)."</td>");
			echo("<td>".number_format($rows['mJul'],2)."</td>");
			echo("<td>".number_format($rows['mJul2'],2)."</td>");
			echo("<td>".number_format($rows['mAug'],2)."</td>");
			echo("<td>".number_format($rows['mAug2'],2)."</td>");
			echo("<td>".number_format($rows['mSep'],2)."</td>");
			echo("<td>".number_format($rows['mSep2'],2)."</td>");
			echo("<td>".number_format($rows['mOct'],2)."</td>");
			echo("<td>".number_format($rows['mOct2'],2)."</td>");
			echo("<td>".number_format($rows['mNov'],2)."</td>");
			echo("<td>".number_format($rows['mNov2'],2)."</td>");
			echo("<td>".number_format($rows['mDec'],2)."</td>");
			echo("<td>".number_format($rows['mDec2'],2)."</td>");
			echo("</tr>");

			
		}

		echo('<tr><td colspan="26"><b> Production Output Unit in Last Year</b></td></tr>');

		foreach ($data['datas_prev'] as $d_prev)
		{

			echo("<tr>");
			echo("<td>".$d_prev['pItemName']."</td>");
			echo("<td>".$d_prev['tYear']."</td>");
			echo("<td>".number_format($d_prev['mJan'],2)."</td>");
			echo("<td>".number_format($d_prev['mJan2'],2)."</td>");
			echo("<td>".number_format($d_prev['mFeb'],2)."</td>");
			echo("<td>".number_format($d_prev['mFeb2'],2)."</td>");
			echo("<td>".number_format($d_prev['mMar'],2)."</td>");
			echo("<td>".number_format($d_prev['mMar2'],2)."</td>");
			echo("<td>".number_format($d_prev['mApr'],2)."</td>");
			echo("<td>".number_format($d_prev['mApr2'],2)."</td>");
			echo("<td>".number_format($d_prev['mMay'],2)."</td>");
			echo("<td>".number_format($d_prev['mMay2'],2)."</td>");
			echo("<td>".number_format($d_prev['mJun'],2)."</td>");
			echo("<td>".number_format($d_prev['mJun2'],2)."</td>");
			echo("<td>".number_format($d_prev['mJul'],2)."</td>");
			echo("<td>".number_format($d_prev['mJul2'],2)."</td>");
			echo("<td>".number_format($d_prev['mAug'],2)."</td>");
			echo("<td>".number_format($d_prev['mAug2'],2)."</td>");
			echo("<td>".number_format($d_prev['mSep'],2)."</td>");
			echo("<td>".number_format($d_prev['mSep2'],2)."</td>");
			echo("<td>".number_format($d_prev['mOct'],2)."</td>");
			echo("<td>".number_format($d_prev['mOct2'],2)."</td>");
			echo("<td>".number_format($d_prev['mNov'],2)."</td>");
			echo("<td>".number_format($d_prev['mNov2'],2)."</td>");
			echo("<td>".number_format($d_prev['mDec'],2)."</td>");
			echo("<td>".number_format($d_prev['mDec2'],2)."</td>");
			echo("</tr>");

			
		}

		
	}
	
	//--------------------------------------------------------------------

}
