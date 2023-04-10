<!doctype html>
<html lang="en">

<head>

    <?= $title_meta ?>

    <?= $this->include('partials/head-css') ?>

</head>

<?= $this->include('partials/body') ?>

<!-- Begin page -->
<div id="layout-wrapper">
    <?= $this->include('partials/menu') ?>
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">
                <!-- Proses calculate data KPI Table -->
                <form action="<?php echo base_url()?>\ViewD\calculate_kpi" method="post">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-3">
                                    </div>
                                    <div class="col-8">
                                        <div class="row mb-3">
                                            <label for="tgl-berlaku" class="col-sm-3 col-form-label">Bulan / Tahun </label>
                                            <div class="col-sm-3">
                                                <input type="month" class="form-control" id="tgl_berlaku" name="tgl_berlaku" value="<?php echo $tYear."-".$tMonth?>" >
                                            </div>
                                            <div class="col-sm-2">
                                                <div>
                                                    <button type="submit" class="btn btn-primary w-md">Submit</button>
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div>
                                                    <a href="delete-kpi" class="btn btn-primary w-md">Delete</a>
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div><a target="_blank" href="export-excel" class="btn btn-primary w-md">To Excel</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </form>

                <div><h3>FINANCIAL</h3></div>
            
                <div class="card">
                    <div class="card-body">
                        <table class="table dt-responsive nowrap w-100">
                            <thead class="table-light">
                                <tr><td></td><td></td><td>A-MTD</td><td>T-MTD</td><td>A-YTD</td><td>T-YTD</td></tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>F.1</td>
                                    <td>COGM/Unit to Std</td>
                                    <td>
                                        <?php 
                                        if($datas[9]['tResultMTD'] > 105)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif ($datas[9]['tResultMTD'] > 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif ($datas[9]['tResultMTD'] > 90)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format($datas[9]['tResultMTD'],1);?> % </span>
                                    </td>
                                    <td>100 %</td>
                                    <td>
                                        <?php 
                                        if($datas[9]['tResultYTD'] > 105)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif ($datas[9]['tResultYTD'] > 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif ($datas[9]['tResultYTD'] > 90)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format($datas[9]['tResultYTD'],1);?> % </span>
                                    </td>
                                    <td>100 %</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>COGM/Unit to LY</td>
                                    <td>
                                        <?php 
                                            if($datas[10]['tResultMTD'] > 105)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif ($datas[10]['tResultMTD'] > 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif ($datas[10]['tResultMTD'] > 90)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format($datas[10]['tResultMTD'],1);?> % </span>
                                    </td>
                                    <td>100 %</td>
                                    <td>
                                        <?php 
                                        if($datas[10]['tResultYTD'] > 105)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif ($datas[10]['tResultYTD'] > 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif ($datas[10]['tResultYTD'] > 90)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format($datas[10]['tResultYTD'],1);?> % </span>
                                    </td>
                                    <td>100 %</td>
                                </tr>
                                <tr>
                                    <td>F.2</td>
                                    <td>DL/Unit to LY</td>
                                    <td>
                                        <?php 
                                            if($datas[11]['tResultMTD'] > 105)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif ($datas[11]['tResultMTD'] > 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif ($datas[11]['tResultMTD'] > 90)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format($datas[11]['tResultMTD'],1);?> % </span>
                                    </td>
                                    <td>100 %</td>
                                    <td>
                                        <?php 
                                        if($datas[11]['tResultYTD'] > 105)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif ($datas[11]['tResultYTD'] > 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif ($datas[11]['tResultYTD'] > 90)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format($datas[11]['tResultYTD'],1);?> % </span>
                                    </td>
                                    <td>100 %</td>
                                </tr>
                                <tr>
                                    <td>F.3</td>
                                    <td>FOH/Unit to LY</td>
                                    <td>
                                        <?php 
                                            if($datas[12]['tResultMTD'] > 105)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif ($datas[12]['tResultMTD'] > 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif ($datas[12]['tResultMTD'] > 90)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format($datas[12]['tResultMTD'],1);?> % </span>
                                    </td>
                                    <td>100 %</td>
                                    <td>
                                        <?php 
                                        if($datas[12]['tResultYTD'] > 105)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif ($datas[12]['tResultYTD'] > 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif ($datas[12]['tResultYTD'] > 90)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format($datas[12]['tResultYTD'],1);?> % </span>
                                    </td>
                                    <td>100 %</td>
                                </tr>
                                <tr>
                                    <td>F.4</td>
                                    <td>Cost Saving</td>
                                    <td>
                                        <?php 
                                            if($datas[13]['tResultMTD'] != 0)
                                            {
                                                if(($datas[13]['tResultMTD']/$datas[27]['tResultMTD'] * 100) < 95)
                                                    { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                                elseif (($datas[13]['tResultMTD']/$datas[27]['tResultMTD'] * 100) < 100)
                                                    { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                                elseif (($datas[13]['tResultMTD']/$datas[27]['tResultMTD'] * 100) < 110)
                                                    { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                                else
                                                    { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };}
                                                echo number_format(($datas[13]['tResultMTD']/1000000000),1);?></span>                                            
                                    </td>
                                    <td><?php echo number_format(($datas[27]['tResultMTD']/1000000000),1);?></td>
                                    <td>
                                        <?php 
                                            if($datas[13]['tResultYTD'] != 0)
                                            {
                                                if(($datas[13]['tResultYTD']/$datas[27]['tResultYTD'] * 100) < 95)
                                                    { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                                elseif (($datas[13]['tResultYTD']/$datas[27]['tResultYTD'] * 100) < 100)
                                                    { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                                elseif (($datas[13]['tResultYTD']/$datas[27]['tResultYTD'] * 100) < 110)
                                                    { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                                else
                                                    { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };}
                                                echo number_format(($datas[13]['tResultYTD']/1000000000),1);?></span>
                                    </td>
                                    <td><?php echo number_format(($datas[27]['tResultYTD']/1000000000),1);?></td>
                                </tr>
                                <tr>
                                    <td>F.5</td>
                                    <td>Reduce Value IF</td>
                                    <td>
                                        <?php 
                                            if(($datas[14]['tResultMTD']) > -47.5)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[14]['tResultMTD']) > -50)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[14]['tResultMTD']) > -55)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[14]['tResultMTD']),1);?> %</span>
                                    </td>
                                    <td>-50 %</td>
                                    <td>
                                        <?php 
                                        if(($datas[14]['tResultYTD']) > -47.5)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif (($datas[14]['tResultYTD']) > -50)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif (($datas[14]['tResultYTD']) > -55)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format(($datas[14]['tResultYTD']),1);?> % </span>
                                    </td>
                                    <td>-50 %</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div><h3> INTERNAL PROCESS </h3></div>
                <div class="card">
                    <div class="card-body">
                        <table class="table dt-responsive nowrap w-100">
                            <thead class="table-info">
                                <tr><td></td><td></td><td>A-MTD</td><td>T-MTD</td><td>A-YTD</td><td>T-YTD</td></tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>I.1</td>
                                    <td>BRFT</td>
                                    <td>
                                        <?php 
                                            if(($datas[4]['tResultMTD']/97.5 * 100) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[4]['tResultMTD']/97.5 * 100) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[4]['tResultMTD']/97.5 * 100) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[4]['tResultMTD']),1);?> %</span>
                                    </td>
                                    <td>97.5 %</td>
                                    <td>
                                        <?php 
                                        if(($datas[4]['tResultYTD']/97.5 * 100) < 95)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif (($datas[4]['tResultYTD']/97.5 * 100) < 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif (($datas[4]['tResultYTD']/97.5 * 100) < 110)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format(($datas[4]['tResultYTD']),1);?> % </span>
                                    </td>
                                    <td>97.5 %</td>
                                </tr>
                                <tr>
                                    <td>I.2</td>
                                    <td>Reduce Deviation</td>
                                    <td>
                                        <?php 
                                            if(($datas[5]['tResultMTD']/12 * 100) > -95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[5]['tResultMTD']/12 * 100) > -100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[5]['tResultMTD']/12 * 100) > -110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[5]['tResultMTD']),1);?> %</span>
                                    </td>
                                    <td>-12 %</td>
                                    <td>
                                        <?php 
                                        if(($datas[5]['tResultYTD']/12 * 100) > -95)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif (($datas[5]['tResultYTD']/12 * 100) > -100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif (($datas[5]['tResultYTD']/12 * 100) > -110)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format(($datas[5]['tResultYTD']),1);?> % </span>
                                    </td>
                                    <td>-12 %</td>
                                </tr>
                                <tr>
                                    <td>I.3</td>
                                    <td>% Rework</td>
                                    <td>
                                        <?php 
                                            if(($datas[7]['tResultMTD']) > 110)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[7]['tResultMTD']) > 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[7]['tResultMTD']) > 95)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[7]['tResultMTD']),1);?> %</span>
                                    </td>
                                    <td>0.9 %</td>
                                    <td>
                                        <?php 
                                        if(($datas[7]['tResultYTD']) > 105)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif (($datas[7]['tResultYTD']) > 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif (($datas[7]['tResultYTD']) > 90)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format(($datas[7]['tResultYTD']),1);?> % </span>
                                    </td>
                                    <td>0.9 %</td>
                                </tr>
                                <tr>
                                    <td>I.4</td>
                                    <td>Reduce Time IF</td>
                                    <td>
                                        <?php 
                                            if(($datas[6]['tResultMTD']) > 105)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[6]['tResultMTD']) > 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[6]['tResultMTD']) > 90)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[6]['tResultMTD']),1);?></span>
                                    </td>
                                    <td>-50 %</td>
                                    <td>
                                        <?php 
                                        if(($datas[6]['tResultYTD']) > 105)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif (($datas[6]['tResultYTD']) > 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif (($datas[6]['tResultYTD']) > 90)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format(($datas[6]['tResultYTD']),1);?> % </span>
                                    </td>
                                    <td>-50 %</td>
                                </tr>
                                <tr>
                                    <td>I.5</td>
                                    <td>% OPE</td>
                                    <td>
                                        <?php 
                                            if(($datas[15]['tResultMTD']/86*100) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[15]['tResultMTD']/86*100) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[15]['tResultMTD']/86*100) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[15]['tResultMTD']),1);?> %</span>
                                    </td>
                                    <td>86 %</td>
                                    <td>
                                        <?php 
                                        if(($datas[15]['tResultYTD']/86*100) < 95)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif (($datas[15]['tResultYTD']/86*100) < 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif (($datas[15]['tResultYTD']/86*100) < 110)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format(($datas[15]['tResultYTD']),1);?> % </span>
                                    </td>
                                    <td>86 %</td>
                                </tr>
                                <tr>
                                    <td>I.6</td>
                                    <td>% Yield</td>
                                    <td>
                                        <?php 
                                            if(($datas[16]['tResultMTD']) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[16]['tResultMTD']) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[16]['tResultMTD']) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[16]['tResultMTD']),1);?></span>
                                    </td>
                                    <td>100 %</td>
                                    <td>
                                        <?php 
                                        if(($datas[16]['tResultYTD']) < 95)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif (($datas[16]['tResultYTD']) < 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif (($datas[16]['tResultYTD']) < 110)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format(($datas[16]['tResultYTD']),1);?> % </span>
                                    </td>
                                    <td>100 %</td>
                                </tr>
                                <tr>
                                    <td>I.7</td>
                                    <td>PCT Sterile</td>
                                    <td>
                                        <?php 
                                            if(($datas[19]['tResultMTD']/16 * 100) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; } 
                                            elseif (($datas[19]['tResultMTD']/16 * 100) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            elseif (($datas[19]['tResultMTD']/16 * 100) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; };
                                            echo number_format(($datas[19]['tResultMTD']),1);?></span>
                                    </td>
                                    <td>16</td>
                                    <td>
                                        <?php 
                                        if(($datas[19]['tResultYTD']/16 * 100) < 95)
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; } 
                                        elseif (($datas[19]['tResultYTD']/16 * 100) < 100)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        elseif (($datas[19]['tResultYTD']/16 * 100) < 110)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; };
                                        echo number_format(($datas[19]['tResultYTD']),1);?></span>
                                    </td>
                                    <td>16</td>
                                </tr>
                                <tr>
                                    <td>I.8</td>
                                    <td>PCT Non Sterile</td>
                                    <td>
                                        <?php echo number_format(($datas[20]['tResultMTD']),1);?></span>
                                    </td>
                                    <td>8</td>
                                    <td>
                                        <?php echo number_format(($datas[20]['tResultYTD']),1);?> </span>
                                    </td>
                                    <td>8</td>
                                </tr>
                                <tr>
                                    <td>I.9</td>
                                    <td>Loss Time Accident</td>
                                    <td>
                                        <?php 
                                        if ($datas[21]['tResultMTD'] != 0 ){
                                            if(($datas[21]['tResultMTD']*100) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[21]['tResultMTD']*100) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[21]['tResultMTD']*100) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[21]['tResultMTD']),1);}
                                        else {
                                            echo "<span class='badge badge-pill badge-soft-success font-size-13'>";
                                            echo number_format(($datas[21]['tResultMTD']),1);
                                        }?></span>
                                    </td>
                                    <td>0</td>
                                    <td>
                                        <?php 
                                        if ($datas[21]['tResultYTD'] != 0 ){
                                            if(($datas[21]['tResultYTD']*100) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[21]['tResultYTD']*100) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[21]['tResultYTD']*100) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[21]['tResultYTD']),1);}
                                        else {
                                            echo "<span class='badge badge-pill badge-soft-success font-size-13'>";
                                            echo number_format(($datas[21]['tResultYTD']),1);
                                        }?></span>
                                    </td>
                                    <td>0</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div><h3> CUSTOMER </h3></div>
                <div class="card">
                    <div class="card-body">
                        <table class="table dt-responsive nowrap w-100">
                            <thead class="table-info">
                                <tr><td></td><td></td><td>A-MTD</td><td>T-MTD</td><td>A-YTD</td><td>T-YTD</td></tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>C.1</td>
                                    <td>Order Fulfillment</td>
                                    <td>
                                        <?php
                                        if ($datas[18]['tResultMTD'] != 0){
                                            if(($datas[18]['tResultMTD']/98 * 100) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[18]['tResultMTD']/98 * 100) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[18]['tResultMTD']/98 * 100) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[18]['tResultMTD']),1);}?> %</span>
                                    </td>
                                    <td>98 %</td>
                                    <td>
                                        <?php
                                        if ($datas[18]['tResultYTD'] != 0){
                                            if(($datas[18]['tResultYTD']/98 * 100) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[18]['tResultYTD']/98 * 100) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[18]['tResultYTD']/98 * 100) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[18]['tResultYTD']),1);}?> %</span>
                                    </td>
                                    <td>98 %</td>
                                </tr>
                                <tr>
                                    <td>C.2</td>
                                    <td>Zero Recall</td>
                                    <td>
                                        <?php 
                                        if($datas[2]['tResultMTD'] != 0)
                                        {
                                            if(($datas[2]['tResultMTD']) > 105)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[2]['tResultMTD']) > 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[2]['tResultMTD']) > 90)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[2]['tResultMTD']),1);}
                                            else 
                                            {
                                                echo "<span class='badge badge-pill badge-soft-success font-size-13'>";
                                                echo number_format(($datas[2]['tResultMTD']),1);
                                            }?></span>
                                    </td>
                                    <td>0</td>
                                    <td>
                                        <?php 
                                        if($datas[2]['tResultYTD'] != 0)
                                        {
                                            if(($datas[2]['tResultYTD']) > 105)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[2]['tResultYTD']) > 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[2]['tResultYTD']) > 90)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[2]['tResultYTD']),1);
                                        }
                                        else 
                                            {
                                                echo "<span class='badge badge-pill badge-soft-success font-size-13'>";
                                                echo number_format(($datas[2]['tResultYTD']),1);
                                            }?></span>
                                    </td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td>C.3</td>
                                    <td>Zero Critical Complaint</td>
                                    <td>
                                        <?php 
                                        if($datas[1]['tResultMTD'] != 0)
                                        {
                                            if(($datas[1]['tResultMTD']) > 105)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[1]['tResultMTD']) > 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[1]['tResultMTD']) > 90)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[1]['tResultMTD']),1);}
                                        else 
                                            {
                                                echo "<span class='badge badge-pill badge-soft-success font-size-13'>";
                                                echo number_format(($datas[1]['tResultMTD']),1);
                                            }?></span>
                                    </td>
                                    <td>0</td>
                                    <td>
                                        <?php 
                                        if($datas[1]['tResultYTD'] != 0)
                                        {
                                        if(($datas[1]['tResultYTD']) > 105)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif (($datas[1]['tResultYTD']) > 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif (($datas[1]['tResultYTD']) > 90)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format(($datas[1]['tResultYTD']),1);}
                                        else 
                                            {
                                                echo "<span class='badge badge-pill badge-soft-success font-size-13'>";
                                                echo number_format(($datas[1]['tResultYTD']),1);
                                            }?></span>
                                    </td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td>C.4</td>
                                    <td>Zero Rejected Batch</td>
                                    <td>
                                        <?php 
                                        if($datas[8]['tResultMTD'] != 0)
                                        {
                                            if(($datas[8]['tResultMTD']) > 105)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[8]['tResultMTD']) > 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[8]['tResultMTD']) > 90)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[8]['tResultMTD']),1);}
                                            else 
                                                {
                                                    echo "<span class='badge badge-pill badge-soft-success font-size-13'>";
                                                    echo number_format(($datas[8]['tResultMTD']),1);
                                                }?></span>
                                    </td>
                                    <td>0</td>
                                    <td>
                                        <?php 
                                        if($datas[8]['tResultYTD'] != 0)
                                        {
                                        if(($datas[8]['tResultYTD']) > 105)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif (($datas[8]['tResultYTD']) > 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif (($datas[8]['tResultYTD']) > 90)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format(($datas[8]['tResultYTD']),1);}
                                        else 
                                            {
                                                echo "<span class='badge badge-pill badge-soft-success font-size-13'>";
                                                echo number_format(($datas[8]['tResultYTD']),1);
                                            }?></span>
                                    </td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td>C.5</td>
                                    <td>Zero Critical Finding</td>
                                    <td>
                                        <?php 
                                        if($datas[2]['tResultMTD'] != 0)
                                        {
                                            if(($datas[2]['tResultMTD']) > 105)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[2]['tResultMTD']) > 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[2]['tResultMTD']) > 90)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[2]['tResultMTD']),1);}
                                        else 
                                            {
                                                echo "<span class='badge badge-pill badge-soft-success font-size-13'>";
                                                echo number_format(($datas[2]['tResultMTD']),1);
                                            }?></span>
                                    </td>
                                    <td>0</td>
                                    <td>
                                        <?php 
                                        if($datas[2]['tResultYTD'] != 0)
                                        {
                                        if(($datas[2]['tResultYTD']) > 105)
                                            { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                        elseif (($datas[2]['tResultYTD']) > 100)
                                            { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                        elseif (($datas[2]['tResultYTD']) > 90)
                                            { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                        else
                                            { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                        echo number_format(($datas[2]['tResultYTD']),1);}
                                        else 
                                            {
                                                echo "<span class='badge badge-pill badge-soft-success font-size-13'>";
                                                echo number_format(($datas[2]['tResultYTD']),1);
                                            }?></span>
                                    </td>
                                    <td>0</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div><h3> LEARNING & GROWTH </h3></div>
                <div class="card">
                    <div class="card-body">
                        <table class="table dt-responsive nowrap w-100">
                            <thead class="table-light">
                                <tr><td></td><td></td><td>A-MTD</td><td>T-MTD</td><td>A-YTD</td><td>T-YTD</td></tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>L.1</td>
                                    <td>HAV-IDP</td>
                                    <td>N/A</td>
                                    <td>N/A</td>
                                    <td>
                                        <?php
                                            if(($rawdata[76]['tResult']) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($rawdata[76]['tResult']) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($rawdata[76]['tResult']) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format($rawdata[76]['tResult'],1); 
                                        ?> %
                                    </td>
                                    <td>100 %</td>
                                </tr>
                                <tr>
                                    <td>L.2</td>
                                    <td>Culture Transformation</td>
                                    <td>
                                        <?php
                                            if(($rawdata[77]['tResult']) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($rawdata[77]['tResult']) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($rawdata[77]['tResult']) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format($rawdata[77]['tResult'],1);                                            
                                        ?> %
                                    </td>
                                    <td>100 %</td>
                                    <td>
                                        <?php
                                            if(($rawdata[78]['tResult']) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($rawdata[78]['tResult']) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($rawdata[78]['tResult']) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format($rawdata[78]['tResult'],1);
                                        ?> %
                                    </td>
                                    <td>100 %</td>
                                </tr>
                                <tr>
                                    <td>L.3</td>
                                    <td>Upskilling</td>
                                    <td>
                                        <?php
                                            if(($rawdata[79]['tResult']) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($rawdata[79]['tResult']) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($rawdata[79]['tResult']) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format($rawdata[79]['tResult'],1);
                                        ?> %
                                    </td>
                                    <td>100 %</td>
                                    <td>
                                        <?php
                                            if(($rawdata[80]['tResult']) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($rawdata[80]['tResult']) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($rawdata[80]['tResult']) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format($rawdata[80]['tResult'],1);
                                        ?> %
                                    </td>
                                    <td>100 %</td>
                                </tr>
                                <tr>
                                    <td>L.4</td>
                                    <td>GP / HR Cost</td>
                                    <td>
                                        <?php
                                            if($datas[24]['tResultMTD'] != 0)
                                            {
                                                if(($datas[24]['tResultMTD']/$datas[25]['tResultMTD']*100) < 95)
                                                    { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                                elseif (($datas[24]['tResultMTD']/$datas[25]['tResultMTD']*100) < 100)
                                                    { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                                elseif (($datas[24]['tResultMTD']/$datas[25]['tResultMTD']*100) < 110)
                                                    { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                                else
                                                    { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                                echo number_format(($datas[24]['tResultMTD']),1);}?></span>
                                    </td>
                                    <td><?php echo number_format(($datas[25]['tResultMTD']),1);?></td>
                                    <td>
                                        <?php
                                            if($datas[24]['tResultYTD'] != 0)
                                            {
                                                if(($datas[24]['tResultYTD']/$datas[25]['tResultYTD']*100) < 95)
                                                    { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                                elseif (($datas[24]['tResultYTD']/$datas[25]['tResultYTD']*100) < 100)
                                                    { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                                elseif (($datas[24]['tResultYTD']/$datas[25]['tResultYTD']*100) < 110)
                                                    { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                                else
                                                    { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                                echo number_format(($datas[24]['tResultYTD']),1);}?></span>
                                    </td>
                                    <td><?php echo number_format(($datas[25]['tResultYTD']),1);?></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>Output / Manhours</td>
                                    <td>
                                        <?php
                                        if($datas[17]['tResultMTD'] != 0)
                                        {
                                            if(($datas[17]['tResultMTD']/$datas[26]['tResultMTD']*100) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[17]['tResultMTD']/$datas[26]['tResultMTD']*100) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[17]['tResultMTD']/$datas[26]['tResultMTD']*100) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[17]['tResultMTD']),1);}?></span>
                                    </td>
                                    <td><?php echo number_format(($datas[26]['tResultMTD']),1);?></td>
                                    <td>
                                        <?php
                                        if($datas[17]['tResultYTD'] != 0)
                                        {
                                            if(($datas[17]['tResultYTD']/$datas[26]['tResultYTD']*100) < 95)
                                                { echo "<span class='badge badge-pill badge-soft-danger font-size-13'>"; } 
                                            elseif (($datas[17]['tResultYTD']/$datas[26]['tResultYTD']*100) < 100)
                                                { echo "<span class='badge badge-pill badge-soft-warning font-size-13'>"; } 
                                            elseif (($datas[17]['tResultYTD']/$datas[26]['tResultYTD']*100) < 110)
                                                { echo "<span class='badge badge-pill badge-soft-success font-size-13'>"; } 
                                            else
                                                { echo "<span class='badge badge-pill badge-soft-info font-size-13'>"; };
                                            echo number_format(($datas[17]['tResultYTD']),1);}?></span>
                                    </td>
                                    <td><?php echo number_format(($datas[26]['tResultYTD']),1);?></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade orderdetailsModal" tabindex="-1" role="dialog" aria-labelledby=orderdetailsModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id=orderdetailsModalLabel">Details</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p class="mb-2">Raw Data: <span class="text-primary">Actual Cost</span></p>
                                <p class="mb-4">Tahun: <span class="text-primary">2022</span></p>
                                <form action="">
                                    <div class="row mb-4">
                                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Bulan</label>
                                        <div class="col-sm-9">
                                            <select id="formrow-inputState" class="form-select">
                                                <option selected>Choose...</option>
                                                <option>Januari</option>
                                                <option>Februari</option>
                                                <option>Maret</option>
                                                <option>April</option>
                                                <option>Mei</option>
                                                <option>Juni</option>
                                                <option>Juli</option>
                                                <option>Agustus</option>
                                                <option>September</option>
                                                <option>Oktober</option>
                                                <option>November</option>
                                                <option>Desember</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label for="horizontal-password-input" class="col-sm-3 col-form-label">Value</label>
                                        <div class="col-sm-9">
                                            <input type="Number" class="form-control" id="horizontal-password-input" placeholder="Input number">
                                        </div>
                                    </div>
                                    <div class="row justify-content-end">
                                        <div class="col-sm-9">
                                            <div>
                                                <button type="submit" class="btn btn-primary w-md">Submit</button>
                                            </div>
                                        </div>
                                    </div>

                                </form>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- end modal -->
                <?= $this->include('partials/footer') ?>
    </div>


</div>

<?= $this->include('partials/right-sidebar') ?>

<?= $this->include('partials/vendor-scripts') ?>

<script src="<?php echo base_url() ?>/assets/js/app.js"></script>

</body>

</html>