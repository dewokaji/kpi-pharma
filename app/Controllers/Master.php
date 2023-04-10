<?php 
namespace App\Controllers;

use App\Controllers\BaseControllers;
use App\Models\MasterModel;
use CodeIgniter\API\ResponseTrait;
use App\Models\ViewModel;
use App\Models\RawDataResultModel;
use App\Models\ViewUtilModel;

class Master extends BaseController
{	
	use ResponseTrait;

	public function construct()
	{
		$session = \Config\Services::session($tmonth);
        $db = \Config\Database::connect();
	}

	public function index()
	{
		$session = \Config\Services::session($tmonth);
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Master']),
			'page_title' => view('partials/page-title', ['title' => 'Master', 'pagetitle' => 'Master'])
		];
		return view ('Master/index', $data);
	}

	public function show_view_input()
	{
		$session = \Config\Services::session($tmonth);
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'View'])
		];
		// print_r($session->get('dept'));die;
		$data['tYear'] = $session->get('tYear');
		$data['dept'] = $session->get('dept');
		//Add by DY
		$data['compId'] = $session->get('compId');
		//print_r($data);die;
		
		
		$View = new ViewModel();
		if(!$data['tYear'])
		{
			$data['tYear'] = '2022';
		}
		if ($data['dept'] == 'MSTD')
		{
			//$data['datas'] = $View->getWhere(['tYear'=>$data['tYear']])->getResultArray();
			//Add by DY
			$data['datas'] = $View->getWhere(['tYear'=>$data['tYear'], 'compId'=>$data['compId']])->getResultArray();
			//$data['datas'] = $View->getWhere(['tYear'=>$data['tYear']], ['compId'=>$data['compId']4]])->getResultArray();
		}
		else
		{
			// print_r($data);die;
			//$data['datas'] = $View->getWhere(['tYear'=>$data['tYear'],'dept'=>$data['dept']])->getResultArray();
			// Add by DY
			$data['datas'] = $View->getWhere(['tYear'=>$data['tYear'],'dept'=>$data['dept'], 'compId'=>$data['compId']])->getResultArray();
			// print_r($data['datas']);
		}
		//print_r($View->getLastQuery()->getQuery());
		return view ('Master/View-Input', $data);
		
	}

	//post function
	public function do_input_raw_data()
	{
		$validation = \Config\Services::validation();
		$validation->setRules(['name'=>'required','dept'=>'required','tgl_berlaku'=>'required']);
		$isDataValid = $validation->withRequest(\Config\Services::request())->run();
		$request = \Config\Services::request();
		
		$data['dept'] = $request->getpost()['dept'];
		$data['vKet'] = $request->getpost()['name'];
		$data['dEffectiveDate'] = $request->getpost()['tgl_berlaku'];
		$data['iUsed'] = 1;
		$data['dCreate'] = date("Y-m-d h:i:s");
		
		// $cek['products'] = $this->db->table($this->table)->select('dept,vket')->get()->getResult();
		// print_r($cek);

		// die;
		if ($isDataValid){
			$MasterModel = new MasterModel();

			$MasterModel->insert($data);	
		}
		else
		{
			echo "Ada Data yang belum di isi";
		}
		// $input = $MasterModel->add($data);

		return redirect("Master-Raw-Data", 'refresh');
	}

	public function input_detail()
	{
        // Add by DY 14 Mar 23
		$session = \Config\Services::session($tmonth);

		$db = \Config\Database::connect();
		$validation = \Config\Services::validation();
		$validation->setRules(['product_id'=>'required','product_name'=>'required']);
		$isDataValid = $validation->withRequest(\Config\Services::request())->run();
		$request = \Config\Services::request();
		$data['idRawData'] = $request->getpost()['product_id'];
		$data['tResult'] = $request->getpost()['nresult'];
		$data['tMonth'] = $request->getpost()['bulan'];
		$data['tYear'] = $request->getpost()['product_name'];
		$data['dCreate'] = date("Y-m-d h:i:s");

		// Add By DY 14 Mar 23
		$data['compId'] = $session->get('compId');
		//print_r($data['compId']);
		

		if($isDataValid){
			$result = new RawDataResultModel();
			$hasil = $result->getWhere(['idRawData'=>$data['idRawData'],'tMonth'=>$data['tMonth'],'tYear'=>$data['tYear']])->getResultArray();
			for ($i=0;$i < count($hasil) ; $i++)
			{
				$result->delete($hasil[$i]['id']);
			}
			// $result->delete(['idRawData'=>$data['idRawData']]);
			$hasil = $result->insert($data);
			print_r($result->getLastQuery()->getQuery());
		}
		else
		{
			echo "Ada data yang belum di isi";
		}
		return redirect("View-Input", 'refresh');
		
	}
	
	public function export_excel_raw()
	{
		$session = \Config\Services::session($tmonth);
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'Dashboard'])
		];
		$data['tYear'] = $session->get('tYear');
		$data['dept'] = $session->get('dept');

		$rawresult = new ViewModel();

		if($data['dept']=='MSTD')
		{
			$data['datas'] = $rawresult->getWhere(['tYear'=>$data['tYear']])->getResultArray();
		}
		else
		{
			$data['datas'] = $rawresult->getWhere(['tYear'=>$data['tYear'],'dept'=>$data['dept']])->getResultArray();
		}
		// print("<pre>".print_r($data['datas'],true)."</pre>");die;
		
		$date = date("dmY");
		header("Content-type: application/vnd-ms-excel");
		header("Content-Disposition: attachment; filename=RawData".$date.".xls");

		echo ("<table border='1' style='font-family:tahoma;font: size 11px;'>");
		echo ("<tr><td>Raw Data</td><td>Tahun</td><td>JAN</td><td>FEB</td><td>MAR</td><td>APR</td><td>MAY</td><td>JUN</td><td>JUL</td><td>AUG</td><td>SEP</td><td>OCT</td><td>NOV</td><td>DEC</td></tr>");
		foreach ($data['datas'] as $rows)
		{
			echo("<tr>");
			echo("<td>".$rows['vKet']."</td>");
			echo("<td>".$rows['tYear']."</td>");
			echo("<td>".$rows['mJan']."</td>");
			echo("<td>".$rows['mFeb']."</td>");
			echo("<td>".$rows['mMar']."</td>");
			echo("<td>".$rows['mApr']."</td>");
			echo("<td>".$rows['mMei']."</td>");
			echo("<td>".$rows['mJun']."</td>");
			echo("<td>".$rows['mJul']."</td>");
			echo("<td>".$rows['mAug']."</td>");
			echo("<td>".$rows['mSep']."</td>");
			echo("<td>".$rows['mOct']."</td>");
			echo("<td>".$rows['mNov']."</td>");
			echo("<td>".$rows['mDec']."</td>");
			echo("</tr>");
		}
	}

	//--------------------------------------------------------------------

}
