<?php namespace App\Controllers;

use App\Models\ViewKPIDataModel;
use App\Models\ViewDataModel;
use App\Models\MasterModel;
use App\Models\RawDataResultModel;
use App\Models\ViewResultGrafikModel;
use App\Models\ResultKPI;
use App\Models\ResultGrafikModel;

class Front extends BaseController
{
	public function index()
	{
		$session = \Config\Services::session();

		if(!$session->get('user'))
		{
			return view('auth/auth-login');
		}
		
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Dashboard']),
			'page_title' => view('partials/page-title', ['title' => 'Dashboard', 'pagetitle' => 'Dashboards'])
		];
		$data['dept'] = $session->get('dept');
		//$data['tYear'] = $session->get('tYear');
		$data['tYear'] = 2022;
		$data['tMonth'] = $session->get('tMonth');
		$data['compId'] = $session->get('compId');
		$data['compCode'] = $session->get('compCode');
		$data['compName'] = $session->get('compName');
		$data['compImgPath'] = $session->get('compImgPath');
		
		$data['tMonth'] = date("m") - 1;
		if ($data['tMonth'] == 0){$data['tMonth'] = 12;}
		if ($data['tMonth'] -1 == 0){
			$data['tMonth1'] = '12';
		}
		else{
			$data['tMonth1'] = $data['tMonth'] - 1;
		}

		if ($data['tMonth'] - 2 == 0){
			$data['tMonth2'] = '11';
		}
		elseif ($data['tMonth'] - 2 == -1){
			$data['tMonth2'] = '12';
		}else{
			$data['tMonth2'] = $data['tMonth'] - 2;
		}
		
		$unit = new ViewResultGrafikModel();
		$data['datau'] = $unit->getWhere(['tYear'=>$data['tYear'],'tMonth'=>$data['tMonth'],'compId'=>$data['compId']])->getResultArray();
		
		$kpi = new ViewKPIDataModel();
		$data['datas'] = $kpi->getWhere(['tYear'=>$data['tYear'],'compId'=>$data['compId']])->getResultArray();

		$rawdata = new ViewDataModel();
		$data['datag'] = $rawdata->getWhere(['tYear'=>$data['tYear'],'compId'=>$data['compId']])->getResultArray();
		
		$category = new MasterModel();
		$data['C'] = $category->getWhere(['vCategory'=>'C'])->getResultArray();
		$data['I'] = $category->getWhere(['vCategory'=>'I'])->getResultArray();
		$data['L'] = $category->getWhere(['vCategory'=>'L'])->getResultArray();
		$data['P'] = $category->getWhere(['vCategory'=>'P'])->getResultArray();
		$data['Q'] = $category->getWhere(['vCategory'=>'Q'])->getResultArray();
		
		$rawdataresult = new RawDataResultModel();
		$data['dataraw1'] = $rawdataresult->getWhere(['tYear'=>$data['tYear'],'tMonth'=>$data['tMonth'],'compId'=>$data['compId']])->getResultArray();
		$data['dataraw2'] = $rawdataresult->getWhere(['tYear'=>$data['tYear'],'tMonth'=>$data['tMonth1'],'compId'=>$data['compId']])->getResultArray();
		
		$rawkpi = new ResultKPI();
		$data['datarawkpi'] = $rawkpi->getWhere(['tYear'=>$data['tYear'],'tMonth'=>$data['tMonth'],'compId'=>$data['compId']])->getResultArray();
		
		$rawgrafik = new ResultGrafikModel();
		$data['datarawgrafik'] = $rawgrafik->getWhere(['tYear'=>$data['tYear'],'tMonth'=>$data['tMonth'],'compId'=>$data['compId']])->getResultArray();
		
		return view('Front/index', $data);
		
	}

	public function show_default()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Dashboard']),
			'page_title' => view('partials/page-title', ['title' => 'Dashboard', 'pagetitle' => 'Dashboards'])
		];
		return view('Front/index', $data);
	}

	public function show_grafana()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Dashboard']),
			'page_title' => view('partials/page-title', ['title' => 'Dashboard', 'pagetitle' => 'Grafana'])
		];
		return view('Front/Grafana',$data);
	}

	public function generate_report()
	{
//		$request = service("http://172.25.161.199:1880/testing?&user=Suwandi&line=1&machine=Pl%C3%BCmat&datestart=2022-04-13%2009:58:32&dateend=2022-04-13%2009:58:41&id=198231");
//		$request->getUri()->getPath();

		$url = "http://172.25.162.198:1880/testing?&user=Suwandi&line=1&machine=Pl%C3%BCmat&datestart=2022-06-29%2016:14:00&dateend=2022-06-29%2016:16:00&id=198231";
		$ch = curl_init();
		curl_setopt($ch,CURLOPT_URL,$url);
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		$output = curl_exec($ch);
		curl_close($ch);
		//$request->getServer("get","http://172.25.161.199:1880/testing?&user=Suwandi&line=1&machine=Pl%C3%BCmat&datestart=2022-04-13%2009:58:32&dateend=2022-04-13%2009:58:41&id=198231");
		//echo("http://172.25.161.199:1880/testing?&user=Suwandi&line=1&machine=Pl%C3%BCmat&datestart=2022-04-13%2009:58:32&dateend=2022-04-13%2009:58:41&id=198231");
	}

	public function download_report()
	{
		$url = "http://172.25.162.198/data/198231.pdf";
		$ch = curl_init($url);
		$dir = "./";
		$filename = basename($url);
		$save_file_loc = $dir.$filename;
		$fp = fopen($save_file_loc, 'wb');
		curl_setopt($ch, CURLOPT_FILE, $fp);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_exec($ch);
		curl_close($ch);
		fclose($fp);

		return redirect('Front/Grafana','refresh');
	}

	public function show_dashboard_saas()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Pharma Dashboard ']),
			'page_title' => view('partials/page-title', ['title' => 'Pharma Dashboard Comming Soon ;)', 'pagetitle' => 'Dashboards'])
		];
		return view('Front/dashboard-saas', $data);
	}

	public function show_dashboard_crypto()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Crypto Dashboard']),
			'page_title' => view('partials/page-title', ['title' => 'Crypto', 'pagetitle' => 'Dashboards'])
		];
		return view('Front/dashboard-crypto', $data);
	}

	public function show_dashboard_blog()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Blog Dashboard']),
			'page_title' => view('partials/page-title', ['title' => 'Blog', 'pagetitle' => 'Dashboards'])
		];
		return view('Front/dashboard-blog', $data);
	}

	public function show_layouts_horizontal()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Horizontal Layout']),
			'page_title' => view('partials/page-title', ['title' => 'Horizontal Layout', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-horizontal', $data);
	}

	public function show_layouts_vertical()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Vertical Layout']),
			'page_title' => view('partials/page-title', ['title' => 'Vertical Layout', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-vertical', $data);
	}

	public function show_layouts_light_sidebar()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Light Sidebar']),
			'page_title' => view('partials/page-title', ['title' => 'Light Sidebar', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-light-sidebar', $data);
	}

	public function show_layouts_compact_sidebar()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Compact Sidebar']),
			'page_title' => view('partials/page-title', ['title' => 'Compact Sidebar', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-compact-sidebar', $data);
	}

	public function show_layouts_icon_sidebar()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Icon Sidebar']),
			'page_title' => view('partials/page-title', ['title' => 'Icon Sidebar', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-icon-sidebar', $data);
	}

	public function show_layouts_boxed()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Boxed Width']),
			'page_title' => view('partials/page-title', ['title' => 'Boxed Width', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-boxed', $data);
	}

	public function show_layouts_preloader()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Preloader Layout']),
			'page_title' => view('partials/page-title', ['title' => 'Preloader', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-preloader', $data);
	}

	public function show_layouts_colored_sidebar()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Colored Sidebar']),
			'page_title' => view('partials/page-title', ['title' => 'Colored Sidebar', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-colored-sidebar', $data);
	}

	public function show_layouts_scrollable()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Scrollable']),
			'page_title' => view('partials/page-title', ['title' => 'Scrollable', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-scrollable', $data);
	}

	public function show_layouts_hori_topbar_light()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Horizontal Topbar Light']),
			'page_title' => view('partials/page-title', ['title' => 'Horizontal Topbar Light', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-hori-topbar-light', $data);
	}

	public function show_layouts_hori_boxed_width()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Horizontal Boxed Width']),
			'page_title' => view('partials/page-title', ['title' => 'Horizontal Boxed Width', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-hori-boxed-width', $data);
	}

	public function show_layouts_hori_preloader()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Horizontal Preloader Layout']),
			'page_title' => view('partials/page-title', ['title' => 'Horizontal Preloader Layout', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-hori-preloader', $data);
	}

	public function show_layouts_hori_colored_header()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Horizontal Topbar Colored']),
			'page_title' => view('partials/page-title', ['title' => 'Horizontal Topbar Colored', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-hori-colored-header', $data);
	}

	public function show_layouts_hori_scrollable()
	{
		$data = [
			'title_meta' => view('partials/title-meta', ['title' => 'Horizontal Scrollable Layout']),
			'page_title' => view('partials/page-title', ['title' => 'Horizontal Scrollable Layout', 'pagetitle' => 'Layouts'])
		];
		return view('Front/layouts-hori-scrollable', $data);
	}

	//--------------------------------------------------------------------

}
