<?php namespace App\Controllers;

use App\Models\RumusKPI;
use App\Models\ResultKPI;
use App\Models\ViewKPIModel;
use App\Models\RawDataResultModel;
use App\Models\RumusGrafikModel;
use App\Models\ResultGrafikModel;

class ViewD extends BaseController
{	
	public function show_kpi_to_target()
	{
		$session = \Config\Services::session();
		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}

		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'KPI To Target'])
		];
		$data['tYear'] = $session->get('tYear');
		
		$View = new ViewKPIModel();

		$data['datas'] = $View->getWhere(['tYear'=>$data['tYear']])->getResultArray();
		
		return view ('ViewD/KpiToTarget', $data);
	}

	public function show_dashboard()
	{
		$session = \Config\Services::session();

		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'Dashboard'])
		];
		$data['tMonth'] = $session->get('tMonth');
		$data['tYear'] = 2022;
		
		$View = new ResultKPI();
		$rawdata = new RawDataResultModel();
		$rawdata->select('idRawData,tResult');
		$rawdata->orderBy('idRawData');
		if($data['tMonth'] == null)
		{
			$data['rawdata'] = $rawdata->getWhere(['tMonth'=>date('m'),'tYear'=>date('y')])->getResultArray();
			$data['datas'] = $View->getWhere(['tMonth'=>date('m'),'tYear'=>date('y')])->getResultArray();
		}
		else
		{
			$data['rawdata'] = $rawdata->getWhere(['tMonth'=>$data['tMonth'],'tYear'=>$data['tYear']])->getResultArray();
			$data['datas'] = $View->getWhere(['tMonth'=>$data['tMonth'],'tYear'=>$data['tYear']])->getResultArray();
		}
		
		return view ('ViewD/Dashboard', $data);
	}

	public function calculate_kpi()
	{
		$session = \Config\Services::session();

		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}

		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'Dashboard'])
		];
		$db = \Config\Database::connect();
		$request = \Config\Services::request();
		$tgl['cek'] = $request->getpost()['tgl_berlaku'];
		$date = explode("-",$tgl['cek']);
		$data['tYear'] = $date[0];
		$data['tMonth'] = $date[1];
		$session->set('tYear',$data['tYear']);
		$session->set('tMonth',$data['tMonth']);
		$data['compId'] = $session->get('compId');
		
		$cek = new ResultKPI();
		$hasilcek = $cek->getWhere(['tMonth'=>$data['tMonth'],'tYear'=>$data['tYear'],'compId'=>$data['compId']])->getResultArray();
		
		if(count($hasilcek) == 0)
		{
			$RumusModel = new RumusKPI();
			$RumusModel->select('id,mRumusMTD,mRumusYTD');
			$hasil = $RumusModel->get()->getResultArray();
			
			$count = count($hasil);
			for($i=0;$i < $count;$i++)
			{
				$data['idRawData'] = $hasil[$i]['id'];
				$queryMTD = $hasil[$i]['mRumusMTD'];
				$queryYTD = $hasil[$i]['mRumusYTD'];
				$queryMTD = str_replace('bulan',$data['tMonth'],$queryMTD);
				$queryMTD = str_replace('tahun',$data['tYear'],$queryMTD);
				$queryMTD = str_replace('site',$data['compId'],$queryMTD);
				$queryYTD = str_replace('site',$data['compId'],$queryYTD);

				$queryYTD = str_replace('bulan',$data['tMonth'],$queryYTD);
				$queryYTD = str_replace('tahun',$data['tYear'],$queryYTD);
				
				$result = $db->query($queryMTD)->getResultArray();
				
				$data['tResultMTD'] = $result[0]['result'];
				if($data['tResultMTD'] == NULL)
				{
					$data['tResultMTD'] = 0;
				}
				$result = $db->query($queryYTD)->getResultArray();
				$data['tResultYTD'] = $result[0]['result'];
				if($data['tResultYTD'] == NULL)
				{
					$data['tResultYTD'] = 0;
				}
				$data['dCreate'] = date("Y-m-d h:i:s");
				$ResultKPI = new ResultKPI();
				$result = $ResultKPI->insert($data);
				
			}
			
		}
		

		$graph = new RumusGrafikModel();
		$graph->select('id,mRumusMTD,mRumusYTD');
		$hasil = $graph->get()->getResultArray();
		$count = count($hasil);
		
		$ResultGrafikModel = new ResultGrafikModel();
		$cek = $ResultGrafikModel->getWhere(['tMonth'=>$data['tMonth'],'tYear'=>$data['tYear'],'compId'=>$data['compId']])->getResultArray();

		if(count($cek) == 0)
		{
			for($i=0;$i < $count;$i++)
			{
				$data['idRawData'] = $hasil[$i]['id'];
				$queryMTD = $hasil[$i]['mRumusMTD'];
				$queryYTD = $hasil[$i]['mRumusYTD'];
				$queryMTD = str_replace('bulan',$data['tMonth'],$queryMTD);
				$queryMTD = str_replace('tahun',$data['tYear'],$queryMTD);
				$queryMTD = str_replace('site',$data['compId'],$queryMTD);
				$queryYTD = str_replace('site',$data['compId'],$queryYTD);

				$queryYTD = str_replace('bulan',$data['tMonth'],$queryYTD);
				$queryYTD = str_replace('tahun',$data['tYear'],$queryYTD);
				
				$data['tResultMTD'] = $result[0]['result'];
				if($data['tResultMTD'] == NULL)
				{
					$data['tResultMTD'] = 0;
				}
				$result = $db->query($queryYTD)->getResultArray();
				
				$data['tResultYTD'] = $result[0]['result'];
				if($data['tResultYTD'] == NULL)
				{
					$data['tResultYTD'] = 0;
				}
				$data['dCreate'] = date("Y-m-d h:i:s");
				$ResultGrafikModel = new ResultGrafikModel();
				$result = $ResultGrafikModel->insert($data);
				
			}
		}

		return redirect('Dashboard','refresh');		

	}

	public function delete_kpi()
	{
		$session = \Config\Services::session();
		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}

		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'Dashboard'])
		];
		$data['tMonth'] = $session->get('tMonth');
		$data['tYear'] = $session->get('tYear');
		$cek = new ResultKPI();
		$hasilcek = $cek->getWhere(['tMonth'=>$data['tMonth'],'tYear'=>$data['tYear']])->getResultArray();
		// print("<pre>".print_r($hasilcek,true)."</pre>");die;
		for ($i=0;$i < count($hasilcek);$i++)
		{
			$cek->delete($hasilcek[$i]['id']);
		}
		$cekgrafik = new ResultGrafikModel();
		$hasilcek = $cekgrafik->getWhere(['tMonth'=>$data['tMonth'],'tYear'=>$data['tYear']])->getResultArray();
		for($i=0;$i < count($hasilcek);$i++)
		{
			$cekgrafik->delete($hasilcek[$i]['id']);
		}
		return redirect("Dashboard",'refresh');

	}

	public function export_excel_kpi()
	{
		$session = \Config\Services::session($tmonth);

		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'Dashboard'])
		];

		$data['tYear'] = $session->get('tYear');
		
		$View = new ViewKPIModel();

		$data['datas'] = $View->getWhere(['tYear'=>$data['tYear']])->getResultArray();
		// print("<pre>".print_r($data['datas'],true)."</pre>");die;
		
		$date = date("dmY");
		header("Content-type: application/vnd-ms-excel");
		header("Content-Disposition: attachment; filename=KPI".$date.".xls");

		echo ("<table border='1' style='font-family:tahoma;font: size 11px;'>");
		echo ("<tr><td>KPI</td><td></td><td>JAN</td><td>FEB</td><td>MAR</td><td>APR</td><td>MAY</td><td>JUN</td><td>JUL</td><td>AUG</td><td>SEP</td><td>OCT</td><td>NOV</td><td>DEC</td></tr>");
		foreach ($data['datas'] as $rows) {
			echo "<tr>";
			echo "<td>".$rows['vKet']."</td>";
			echo "<td>MTD</td>";
			echo "<td>".$rows['tResultMTDJan']."</td>";
			echo "<td>".$rows['tResultMTDfeb']."</td>";
			echo "<td>".$rows['tResultMTDMar']."</td>";
			echo "<td>".$rows['tResultMTDApr']."</td>";
			echo "<td>".$rows['tResultMTDMei']."</td>";
			echo "<td>".$rows['tResultMTDJun']."</td>";
			echo "<td>".$rows['tResultMTDJul']."</td>";
			echo "<td>".$rows['tResultMTDAug']."</td>";
			echo "<td>".$rows['tResultMTDSep']."</td>";
			echo "<td>".$rows['tResultMTDOkt']."</td>";
			echo "<td>".$rows['tResultMTDNov']."</td>";
			echo "<td>".$rows['tResultMTDDes']."</td>";
			echo "</tr><tr>";
			echo "<td></td>";
			echo "<td>YTD</td>";
			echo "<td>".$rows['tResultYTDJan']."</td>";
			echo "<td>".$rows['tResultYTDFeb']."</td>";
			echo "<td>".$rows['tResultYTDMar']."</td>";
			echo "<td>".$rows['tResultYTDApr']."</td>";
			echo "<td>".$rows['tResultYTDMei']."</td>";
			echo "<td>".$rows['tResultYTDJun']."</td>";
			echo "<td>".$rows['tResultYTDJul']."</td>";
			echo "<td>".$rows['tResultYTDAug']."</td>";
			echo "<td>".$rows['tResultYTDSep']."</td>";
			echo "<td>".$rows['tResultYTDOkt']."</td>";
			echo "<td>".$rows['tResultYTDNov']."</td>";
			echo "<td>".$rows['tResultYTDDes']."</td>";
			echo "</tr>";
			}
			echo "</table>";
	}

	public function export_excel()
	{
		$session = \Config\Services::session();
		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'View']),
			'page_title' => view('partials/page-title', ['title' => 'View', 'pagetitle' => 'Dashboard'])
		];
		$data['tMonth'] = $session->get('tMonth');
		$data['tYear'] = $session->get('tYear');
		$View = new ResultKPI();
		$datas = $View->getWhere(['tMonth'=>$data['tMonth'],'tYear'=>$data['tYear']])->getResultArray();

		$date = date("dmY");
		header("Content-type: application/vnd-ms-excel");
		header("Content-Disposition: attachment; filename=Dashboard".$date.".xls");

		echo ("<center style='font-family:calibri;'><h1>Financial</h1></center>");
		echo ('<table class="table dt-responsive nowrap w-100">');
		echo ('<thead class="table-light">');
		echo ('<tr><td></td><td></td><td>A-MTD</td><td>T-MTD</td><td>A-YTD</td><td>T-YTD</td></tr>');
		echo ('</thead>');
		echo ('<tbody>');
		echo ('<tr>');
		echo ('<td><b>F.1</b></td>');
		echo ('<td><b>COGM/Unit to Std</b></td>');
		echo ('<td>');
					if($datas[9]['tResultMTD'] > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif ($datas[9]['tResultMTD'] > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif ($datas[9]['tResultMTD'] > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format($datas[9]['tResultMTD'],2)." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('<td>');
					if($datas[9]['tResultYTD'] > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif ($datas[9]['tResultYTD'] > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif ($datas[9]['tResultYTD'] > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format($datas[9]['tResultYTD'],2)." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td></td>');
		echo ('<td><b>COGM/Unit to LY</b></td>');
		echo ('<td>');
						if($datas[10]['tResultMTD'] > 105)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif ($datas[10]['tResultMTD'] > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif ($datas[10]['tResultMTD'] > 90)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format($datas[10]['tResultMTD'],2)." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('<td>');
					if($datas[10]['tResultYTD'] > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif ($datas[10]['tResultYTD'] > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif ($datas[10]['tResultYTD'] > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format($datas[10]['tResultYTD'],2)." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>F.2</b></td>');
		echo ('<td><b>DL/Unit to LY</b></td>');
		echo ('<td>');
						if($datas[11]['tResultMTD'] > 105)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif ($datas[11]['tResultMTD'] > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif ($datas[11]['tResultMTD'] > 90)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format($datas[11]['tResultMTD'],2)." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('<td>');
					if($datas[11]['tResultYTD'] > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif ($datas[11]['tResultYTD'] > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif ($datas[11]['tResultYTD'] > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format($datas[11]['tResultYTD'],2)." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>F.3</b></td>');
		echo ('<td><b>FOH/Unit to LY</b></td>');
		echo ('<td>');
						if($datas[12]['tResultMTD'] > 105)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif ($datas[12]['tResultMTD'] > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif ($datas[12]['tResultMTD'] > 90)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format($datas[12]['tResultMTD'],2)." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('<td>');
					if($datas[12]['tResultYTD'] > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif ($datas[12]['tResultYTD'] > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif ($datas[12]['tResultYTD'] > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format($datas[12]['tResultYTD'],2)." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>F.4</b></td>');
		echo ('<td><b>Cost Saving</b></td>');
		echo ('<td>');
						if(($datas[13]['tResultMTD']/10000000) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[13]['tResultMTD']/10000000) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[13]['tResultMTD']/10000000) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[13]['tResultMTD']/1000000000),2)."</span>";
		echo ('</td>');
		echo ('<td>'.number_format(($datas[27]['tResultMTD']/1000000000),2).'</td>');
		echo ('<td>');
					if(($datas[13]['tResultYTD']/10000000) < 95)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[13]['tResultYTD']/10000000) < 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[13]['tResultYTD']/10000000) < 110)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[13]['tResultYTD']/1000000000),2)."</span>";
		echo ('</td>');
		echo ('<td>'.number_format(($datas[27]['tResultYTD']/1000000000),2).'</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>F.5</b></td>');
		echo ('<td><b>Reduce Value IF</b></td>');
		echo ('<td>');
						if(($datas[14]['tResultMTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[14]['tResultMTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[14]['tResultMTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[14]['tResultMTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>-50 %</td>');
		echo ('<td>');
					if(($datas[14]['tResultYTD']) < 95)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[14]['tResultYTD']) < 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[14]['tResultYTD']) < 110)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[14]['tResultYTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>-50 %</td>');
		echo ('</tr>');
		echo ('</tbody>');
		echo ('</table>');

		echo ("<center style='font-family:sans-serif;'><h1>Internal Process</h1></center>");
		echo ('<table class="table dt-responsive nowrap w-100">');
		echo ('<thead class="table-info">');
		echo ('<tr><td></td><td></td><td>A-MTD</td><td>T-MTD</td><td>A-YTD</td><td>T-YTD</td></tr>');
		echo ('</thead>');
		echo ('<tbody>');
		echo ('<tr>');
		echo ('<td><b>I.1</b></td>');
		echo ('<td><b>BRFT</b></td>');
		echo ('<td>');
						if(($datas[4]['tResultMTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[4]['tResultMTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[4]['tResultMTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[4]['tResultMTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>97.5 %</td>');
		echo ('<td>');
					if(($datas[4]['tResultYTD']) < 95)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[4]['tResultYTD']) < 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[4]['tResultYTD']) < 110)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[4]['tResultYTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>97.5 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>I.2</b></td>');
		echo ('<td><b>Reduce Deviation</b></td>');
		echo ('<td>');
						if(($datas[5]['tResultMTD']) > 110)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[5]['tResultMTD']) > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[5]['tResultMTD']) > 90)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[5]['tResultMTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>-20 %</td>');
		echo ('<td>');
					if(($datas[5]['tResultYTD']) > 110)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[5]['tResultYTD']) > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[5]['tResultYTD']) > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[5]['tResultYTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>-20 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>I.3</b></td>');
		echo ('<td><b>% Rework</b></td>');
		echo ('<td>');
						if(($datas[7]['tResultMTD']) > 110)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[7]['tResultMTD']) > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[7]['tResultMTD']) > 95)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[7]['tResultMTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>0.9 %</td>');
		echo ('<td>');
					if(($datas[7]['tResultYTD']) > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[7]['tResultYTD']) > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[7]['tResultYTD']) > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[7]['tResultYTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>0.9 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>I.4</b></td>');
		echo ('<td><b>Reduce Time IF</b></td>');
		echo ('<td>');
						if(($datas[6]['tResultMTD']) > 105)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[6]['tResultMTD']) > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[6]['tResultMTD']) > 90)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[6]['tResultMTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>-50 %</td>');
		echo ('<td>');
					if(($datas[6]['tResultYTD']) > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[6]['tResultYTD']) > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[6]['tResultYTD']) > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[6]['tResultYTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>-50 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>I.5</b></td>');
		echo ('<td><b>% OPE</b></td>');
		echo ('<td>');
						if(($datas[15]['tResultMTD']) > 105)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[15]['tResultMTD']) > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[15]['tResultMTD']) > 90)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[15]['tResultMTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>86 %</td>');
		echo ('<td>');
					if(($datas[15]['tResultYTD']) > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[15]['tResultYTD']) > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[15]['tResultYTD']) > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[15]['tResultYTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>86 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>I.6</b></td>');
		echo ('<td><b>% Yield</b></td>');
		echo ('<td>');
						if(($datas[16]['tResultMTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[16]['tResultMTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[16]['tResultMTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[16]['tResultMTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>-50 %</td>');
		echo ('<td>');
					if(($datas[16]['tResultYTD']) < 95)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[16]['tResultYTD']) < 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[16]['tResultYTD']) < 110)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[16]['tResultYTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>1</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>I.7</b></td>');
		echo ('<td><b>PCT Sterile</b></td>');
		echo ('<td>');
						if(($datas[19]['tResultMTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[19]['tResultMTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[19]['tResultMTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[19]['tResultMTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>-50 %</td>');
		echo ('<td>');
					if(($datas[19]['tResultYTD']) < 95)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[19]['tResultYTD']) < 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[19]['tResultYTD']) < 110)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[19]['tResultYTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>16</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>I.8</b></td>');
		echo ('<td><b>PCT Non Sterile</b></td>');
		echo ('<td>');
					echo number_format(($datas[20]['tResultMTD']),2);
		echo ('</td>');
		echo ('<td>-50 %</td>');
		echo ('<td>');
					echo number_format(($datas[20]['tResultYTD']),2);
		echo ('</td>');
		echo ('<td>8</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>I.9</b></td>');
		echo ('<td><b>Loss Time Accident</b></td>');
		echo ('<td>');
						if(($datas[21]['tResultMTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[21]['tResultMTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[21]['tResultMTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[21]['tResultMTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>-50 %</td>');
		echo ('<td>');
					if(($datas[21]['tResultYTD']) < 95)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[21]['tResultYTD']) < 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[21]['tResultYTD']) < 110)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[21]['tResultYTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>0</td>');
		echo ('</tr>');
		echo ('</tbody>');
		echo ('</table>');

		echo ("<center style='font-family:sans-serif;'><h1>Customer</h1></center>");
		echo ('<table class="table dt-responsive nowrap w-100">');
		echo ('<thead class="table-info">');
		echo ('<tr><td></td><td></td><td>A-MTD</td><td>T-MTD</td><td>A-YTD</td><td>T-YTD</td></tr>');
		echo ('</thead>');
		echo ('<tbody>');
		echo ('<tr>');
		echo ('<td><b>C.1</b></td>');
		echo ('<td><b>Order Fulfillment</b></td>');
		echo ('<td>');
						if(($datas[18]['tResultMTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[18]['tResultMTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[18]['tResultMTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[18]['tResultMTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>98 %</td>');
		echo ('<td>');
						if(($datas[18]['tResultYTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[18]['tResultYTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[18]['tResultYTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[18]['tResultYTD']),2)." % </span>";
		echo ('</td>');
		echo ('<td>98 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>C.2</b></td>');
		echo ('<td><b>Zero Recall</b></td>');
		echo ('<td>');
						if(($datas[1]['tResultMTD']) > 105)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[1]['tResultMTD']) > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[1]['tResultMTD']) > 90)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[1]['tResultMTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>0</td>');
		echo ('<td>');
					if(($datas[1]['tResultYTD']) > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[1]['tResultYTD']) > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[1]['tResultYTD']) > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[1]['tResultYTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>0</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>C.3</b></td>');
		echo ('<td><b>Zero Critical Complaint</b></td>');
		echo ('<td>');
						if(($datas[0]['tResultMTD']) > 105)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[0]['tResultMTD']) > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[0]['tResultMTD']) > 90)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[0]['tResultMTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>0</td>');
		echo ('<td>');
					if(($datas[0]['tResultYTD']) > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[0]['tResultYTD']) > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[0]['tResultYTD']) > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[0]['tResultYTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>0</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>C.4</b></td>');
		echo ('<td><b>Zero Rejected Batch</b></td>');
		echo ('<td>');
						if(($datas[8]['tResultMTD']) > 105)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[8]['tResultMTD']) > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[8]['tResultMTD']) > 90)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[8]['tResultMTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>0</td>');
		echo ('<td>');
					if(($datas[8]['tResultYTD']) > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[8]['tResultYTD']) > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[8]['tResultYTD']) > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[8]['tResultYTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>0</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>C.5</b></td>');
		echo ('<td><b>Zero Critical Finding</b></td>');
		echo ('<td>');
						if(($datas[2]['tResultMTD']) > 105)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[2]['tResultMTD']) > 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[2]['tResultMTD']) > 90)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[2]['tResultMTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>0</td>');
		echo ('<td>');
					if(($datas[2]['tResultYTD']) > 105)
						{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
					elseif (($datas[2]['tResultYTD']) > 100)
						{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
					elseif (($datas[2]['tResultYTD']) > 90)
						{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
					else
						{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
					echo number_format(($datas[2]['tResultYTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>0</td>');
		echo ('</tr>');
		echo ('</tbody>');
		echo ('</table>');

		echo ("<center style='font-family:sans-serif;'><h1>Learning and Growth</h1></center>");
		echo ('<table class="table dt-responsive nowrap w-100">');
		echo ('<thead class="table-info">');
		echo ('<tr><td></td><td></td><td>A-MTD</td><td>T-MTD</td><td>A-YTD</td><td>T-YTD</td></tr>');
		echo ('</thead>');
		echo ('<tbody>');
		echo ('<tr>');
		echo ('<td><b>L.1</td>');
		echo ('<td><b>HAV-IDP</td>');
		echo ('<td>N/A</td>');
		echo ('<td>N/A</td>');
		echo ('<td>');
						if(($rawdata[74]['tResult']* 100) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($rawdata[74]['tResult']* 100) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($rawdata[74]['tResult']* 100) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo $rawdata[74]['tResult']* 100; echo " % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>L.2</td>');
		echo ('<td><b>Culture Transformation</td>');
		echo ('<td>');
						if(($rawdata[77]['tResult']* 100) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($rawdata[77]['tResult']* 100) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($rawdata[77]['tResult']* 100) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo $rawdata[77]['tResult']." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('<td>');
						if(($rawdata[76]['tResult']* 100) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($rawdata[76]['tResult']* 100) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($rawdata[76]['tResult']* 100) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo $rawdata[76]['tResult']." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>L.3</td>');
		echo ('<td><b>Upskilling</td>');
		echo ('<td>');
						if(($rawdata[79]['tResult']* 100) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($rawdata[79]['tResult']* 100) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($rawdata[79]['tResult']* 100) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo $rawdata[79]['tResult']." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('<td>');
						if(($rawdata[78]['tResult']* 100) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($rawdata[78]['tResult']* 100) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($rawdata[78]['tResult']* 100) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo $rawdata[78]['tResult']." % </span>";
		echo ('</td>');
		echo ('<td>100 %</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td><b>L.4</td>');
		echo ('<td><b>GP / HR Cost</td>');
		echo ('<td>');
						if(($datas[24]['tResultMTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[24]['tResultMTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[24]['tResultMTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[24]['tResultMTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>');echo number_format(($datas[25]['tResultMTD']),2); echo ('</td>');
		echo ('<td>');
						if(($datas[24]['tResultYTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[24]['tResultYTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[24]['tResultYTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[24]['tResultYTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>'); echo number_format(($datas[25]['tResultYTD']),2); echo ('</td>');
		echo ('</tr>');
		echo ('<tr>');
		echo ('<td></td>');
		echo ('<td><b>Output / Manhours</td>');
		echo ('<td>');
						if(($datas[17]['tResultMTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[17]['tResultMTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[17]['tResultMTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[17]['tResultMTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>'); echo number_format(($datas[26]['tResultMTD']),2); echo ('</td>');
		echo ('<td>');
						if(($datas[17]['tResultYTD']) < 95)
							{ echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
						elseif (($datas[17]['tResultYTD']) < 100)
							{ echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
						elseif (($datas[17]['tResultYTD']) < 110)
							{ echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
						else
							{ echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
						echo number_format(($datas[17]['tResultYTD']),2)."</span>";
		echo ('</td>');
		echo ('<td>');echo number_format(($datas[26]['tResultYTD']),2);echo('</td>');
		echo ('</tr>');
		echo ('</tbody>');
		echo ('</table>');

}

	//--------------------------------------------------------------------

}
