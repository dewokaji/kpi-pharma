<!doctype html>
<html lang="en">

<head>

    <?= $title_meta ?>

    <?= $this->include('partials/head-css') ?>
   <!-- Data Tables -->
   	
    <link href="https://cdn.datatables.net/v/dt/jq-3.6.0/jszip-2.5.0/dt-1.13.4/af-2.5.3/b-2.3.6/b-colvis-2.3.6/b-html5-2.3.6/b-print-2.3.6/cr-1.6.2/date-1.4.0/fc-4.2.2/fh-3.3.2/kt-2.8.2/r-2.4.1/rg-1.3.1/rr-1.3.3/sc-2.1.1/sb-1.4.2/sp-2.1.2/sl-1.6.2/sr-1.2.2/datatables.min.css" rel="stylesheet"/>
    <!--<link href="<?php echo base_url() ?>/assets/vendor/DataTables/datatables.min.css" id="app-style" rel="stylesheet" type="text/css" />-->
  <style>
        .display-none {
            display: none;
        }

        .display {
            display: block;
        }

        .button-colvis {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
            font-size: 14px;
        }

        .button-colvis:hover {
            background-color: #556ee6;
            color: #fff;
        }
        
        /*div.dt-button-collection button.dt-button.active {
            background: linear-gradient(to bottom, #50a5f1 0%, #556ee6 100%) !importants;
            #f0f0f0
            /*background-color: rgba(0, 0, 0, 0);
            background-position-x: 0%;
            background-position-y: 0%;
            background-repeat: repeat;
            background-attachment: scroll;
            background-image: linear-gradient(rgb(240, 240, 240) 0%, rgb(218, 218, 218) 100%);
            background-size: auto;
            background-origin: padding-box;
            background-clip: border-box;
        }*/
        /*.dt-buttons .dt-button-collection {
            margin: 5px 0 !important;
            }*/

            .dt-button.buttons-columnVisibility {
            background-color: #50a5f1;
            /*background-color: linear-gradient(to bottom, #50a5f1 0%, #556ee6 100%);*/
            color: white;
            }

            .dt-button.buttons-columnVisibility.active {
            background-color: green;
            }

        .dt-button-collection button.dt-button.active {
            background-color: linear-gradient(to bottom, blue 0%, blue 100%);
        }

        
    </style>
    

</head>

<?= $this->include('partials/body') ?>

<!-- Begin page -->
<div id="layout-wrapper">
    <?= $this->include('partials/menu') ?>
    <?php $session = \Config\Services::session(); ?>
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="row mb-4">
                                            <h3>Capacity utilization <?= $session->get('compName'); ?> </h3>
                                            
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <form action="<?= base_url('CapacityUtil/export_excel_util'); ?>" method="post">
                                        <div class="row mb-1">
                                            <label for="tYear" class="col-sm-3 col-form-label">Tahun </label>
                                            <div class="col-sm-3">
                                                
                                                <!--<input type="month" class="form-control" id="tgl_berlaku" name="tgl_berlaku" value="<?php echo $tYear."-".$tMonth?>" >-->
                                                <select id="tYear" name="tYear" class="form-select">
                                                    <option value="" selected>Choose...</option>
                                                    <option value="2021">2021</option>
                                                    <option value="2022">2022</option>
                                                    <option value="2023" selected>2023</option>
                                                    <option value="2024">2024</option>
                                                    <option value="2025">2025</option>
                                                    <option value="2026">2026</option>
                                            </select>
                                            </div>
                                            <div class="col-sm-2">
                                                <div>
                                                    <button type="submit" class="btn btn-primary w-md">To Excel</button>
                                                </div>
                                            </div>
                                            <!--<div class="col-sm-2">
                                                <div>
                                                    <a href="delete-kpi" class="btn btn-primary w-md">Upload Data</a>
                                                </div>
                                            </div>-->
                                            
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--</form>-->

                <div class="card">
                    <div class="card-body">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">
                                    Capacity Utilisation </button>
                                <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">
                                    Sediaan Group 1</button>
                                <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">
                                    Sediaan Group 2</button>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
                                <p></p>
                                <table id="tableUtil" class="table table-light display nowrap tbl-util" style="width:100%">
                                    <thead class="table-info">
                                        <tr>
                                            <th>Input</th>
                                            <th style="width: 10%;">Line  Productions</th>
                                            <th>FY<?php echo $tYear - 2; ?></th>
                                            <th>FY<?php echo $tYear - 1; ?></th>
                                            <th><?php echo $tYear; ?></th>
                                            <th>Jan(%)</th>
                                            <th>Jan_Capacity</th>
                                            <th>Jan_Result</th>
                                            <th>Feb(%)</th>
                                            <th>Feb_Capacity</th>
                                            <th>Feb_Result</th>
                                            <th>Mar(%)</th>
                                            <th>Mar_Capacity</th>
                                            <th>Mar_Result</th>
                                            <th>Apr(%)</th>
                                            <th>Apr_Capacity</th>
                                            <th>Apr_Result</th>
                                            <th>Mei(%)</th>
                                            <th>Mei_Capacity</th>
                                            <th>Mei_Result</th>
                                            <th>Jun(%)</th>
                                            <th>Jun_Capacity</th>
                                            <th>Jun_Result</th>
                                            <th>Jul(%)</th>
                                            <th>Jul_Capacity</th>
                                            <th>Jul_Result</th>
                                            <th>Agu(%)</th>
                                            <th>Agu_Capacity</th>
                                            <th>Agu_Result</th>
                                            <th>Sep(%)</th>
                                            <th>Sep_Capacity</th>
                                            <th>Sep_Result</th>
                                            <th>Okt(%)</th>
                                            <th>Okt_Capacity</th>
                                            <th>Okt_Result</th>
                                            <th>Nov(%)</th>
                                            <th>Nov_Capacity</th>
                                            <th>Nov_Result</th>
                                            <th>Des(%)</th>
                                            <th>Des_Capacity</th>
                                            <th>Des_Result</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        foreach ($datas as $row) {
                                                $util_prev2 = util_result($row['lineId'], $row['tYear']-2);
                                                $util_prev  = util_result($row['lineId'], $row['tYear']-1);
                                                $util_cur   = util_result($row['lineId'], $row['tYear']);
                                                ?>
                                        <tr>
                                            <td>
                                                <a href="#" class="btn btn-primary btn-sm btn-rounded" data-id="<?php echo $row['lineId'] ?>" data-vket="<?php echo $row['lineName']?>" data-year="<?php echo $row['tYear'] ?>">
                                                <i class="bx bx-pencil"></i>
                                                </a>
                                            </td>
                                            <td style="width: 10%;"><?php echo $row['lineName'] ?></td>
                                            <td <?= colour_min ($util_prev2) ?>><?= $util_prev2 ?></td>
                                            <td <?= colour_min ($util_prev) ?>><?= $util_prev ?></td>
                                            <td <?= colour_min ($util_cur) ?>><?= $util_cur; ?></td>
                                            <td <?= colour_min ($row['mJan'] / max($row['mJan2'], 1)) ?>>
                                                <?= number_format(($row['mJan'] / max($row['mJan2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mJan2'],2) ?></td>
                                            <td><?= number_format($row['mJan'],2) ?></td>
                                            <td <?= colour_min ($row['mfeb'] / max($row['mFeb2'], 1)) ?>>
                                                <?= number_format(($row['mFeb'] / max($row['mFeb2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mFeb2'],2) ?></td>
                                            <td><?= number_format($row['mFeb'],2) ?></td>
                                            <td <?= colour_min ($row['mMar'] / max($row['mMar2'], 1)) ?>>
                                                <?= number_format(($row['mMar'] / max($row['mMar2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mMar2'],2) ?></td>
                                            <td><?= number_format($row['mMar'],2) ?></td>
                                            <td <?= colour_min ($row['mApr'] / max($row['mApr2'], 1)) ?>>
                                                <?= number_format(($row['mApr'] / max($row['mApr2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mApr2'],2) ?></td>
                                            <td><?= number_format($row['mApr'],2) ?></td>
                                            <td <?= colour_min ($row['mMei'] / max($row['mMei2'], 1)) ?>>
                                                <?= number_format(($row['mMei'] / max($row['mMei2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mMei2'],2) ?></td>
                                            <td><?= number_format($row['mMei'],2) ?></td>
                                            <td <?= colour_min ($row['mJun'] / max($row['mJun2'], 1)) ?>>
                                                <?= number_format(($row['mJun'] / max($row['mJun2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mJun2'],2) ?></td>
                                            <td><?= number_format($row['mJun'],2) ?></td>
                                            <td <?= colour_min ($row['mJul'] / max($row['mJul2'], 1)) ?>>
                                                <?= number_format(($row['mJul'] / max($row['mJul2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mJul2'],2) ?></td>
                                            <td><?= number_format($row['mJul'],2) ?></td>
                                            <td <?= colour_min ($row['mAug'] / max($row['mAug2'], 1)) ?>>
                                                <?= number_format(($row['mAug'] / max($row['mAug2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mAug2'],2) ?></td>
                                            <td><?= number_format($row['mAug'],2) ?></td>
                                            <td <?= colour_min ($row['mSep'] / max($row['mSep2'], 1)) ?>>
                                                <?= number_format(($row['mSep'] / max($row['mSep2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mSep2'],2) ?></td>
                                            <td><?= number_format($row['mSep'],2) ?></td>
                                            <td <?= colour_min ($row['mOct'] / max($row['mOct2'], 1)) ?>>
                                                <?= number_format(($row['mOct'] / max($row['mOct2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mOct2'],2) ?></td>
                                            <td><?= number_format($row['mOct'],2) ?></td>
                                            <td <?= colour_min ($row['mNov'] / max($row['mNov2'], 1)) ?>>
                                                <?= number_format(($row['mNov'] / max($row['mNov2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mNov2'],2) ?></td>
                                            <td><?= number_format($row['mNov'],2) ?></td>
                                            <td <?= colour_min ($row['mDes'] / max($row['mDes2'], 1)) ?>>
                                                <?= number_format(($row['mDes'] / max($row['mDes2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($row['mDec2'],2) ?></td>
                                            <td><?= number_format($row['mDec'],2) ?></td>
                                            
                                        </tr>
                                        
                                        <?php }?>  
                                    </tbody>
                                </table>
                        </div>
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">
                            <p></p>
                                <table id="tableUtil2" class="table table-light display nowrap tbl-util" style="width:100%">
                                    <thead class="table-info">
                                        <tr>
                                            <th>Input</th>
                                            <th style="width: 10%;">Line  Productions</th>
                                            <th>FY<?php echo $tYear - 2; ?></th>
                                            <th>FY<?php echo $tYear - 1; ?></th>
                                            <th><?php echo $tYear; ?></th>
                                            <th>Jan(%)</th>
                                            <th>Jan_Capacity</th>
                                            <th>Jan_Result</th>
                                            <th>Feb(%)</th>
                                            <th>Feb_Capacity</th>
                                            <th>Feb_Result</th>
                                            <th>Mar(%)</th>
                                            <th>Mar_Capacity</th>
                                            <th>Mar_Result</th>
                                            <th>Apr(%)</th>
                                            <th>Apr_Capacity</th>
                                            <th>Apr_Result</th>
                                            <th>Mei(%)</th>
                                            <th>Mei_Capacity</th>
                                            <th>Mei_Result</th>
                                            <th>Jun(%)</th>
                                            <th>Jun_Capacity</th>
                                            <th>Jun_Result</th>
                                            <th>Jul(%)</th>
                                            <th>Jul_Capacity</th>
                                            <th>Jul_Result</th>
                                            <th>Agu(%)</th>
                                            <th>Agu_Capacity</th>
                                            <th>Agu_Result</th>
                                            <th>Sep(%)</th>
                                            <th>Sep_Capacity</th>
                                            <th>Sep_Result</th>
                                            <th>Okt(%)</th>
                                            <th>Okt_Capacity</th>
                                            <th>Okt_Result</th>
                                            <th>Nov(%)</th>
                                            <th>Nov_Capacity</th>
                                            <th>Nov_Result</th>
                                            <th>Des(%)</th>
                                            <th>Des_Capacity</th>
                                            <th>Des_Result</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach($datagroup1 as $data1){ 

                                            $util1_prev2 = util_year_group(1, $data1['group1'], $data1['tYear']-2);
                                            $util1_prev  = util_year_group(1, $data1['group1'], $data1['tYear']-1);
                                            $util1_cur   = util_year_group(1, $data1['group1'], $data1['tYear']);?>
                                        <tr>
                                            <td>-</td>
                                            <td style="width: 10%;"><?php echo $data1['group1'] ?></td>
                                            <td><?= $util1_prev2 ?></td>
                                            <td><?= $util1_prev ?></td>
                                            <td><?=$util1_cur ?></td>
                                            <td <?= colour_min ($data1['mJan'] / max($data1['mJan2'], 1)) ?>>
                                                <?= number_format(($data1['mJan'] / max($data1['mJan2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mJan2'],2) ?></td>
                                            <td><?= number_format($data1['mJan'],2) ?></td>
                                            <td <?= colour_min ($data1['mfeb'] / max($data1['mFeb2'], 1)) ?>>
                                                <?= number_format(($data1['mFeb'] / max($data1['mFeb2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mFeb2'],2) ?></td>
                                            <td><?= number_format($data1['mFeb'],2) ?></td>
                                            <td <?= colour_min ($data1['mMar'] / max($data1['mMar2'], 1)) ?>>
                                                <?= number_format(($data1['mMar'] / max($data1['mMar2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mMar2'],2) ?></td>
                                            <td><?= number_format($data1['mMar'],2) ?></td>
                                            <td <?= colour_min ($data1['mApr'] / max($data1['mApr2'], 1)) ?>>
                                                <?= number_format(($data1['mApr'] / max($data1['mApr2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mApr2'],2) ?></td>
                                            <td><?= number_format($data1['mApr'],2) ?></td>
                                            <td <?= colour_min ($data1['mMei'] / max($data1['mMei2'], 1)) ?>>
                                                <?= number_format(($data1['mMei'] / max($data1['mMei2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mMei2'],2) ?></td>
                                            <td><?= number_format($data1['mMei'],2) ?></td>
                                            <td <?= colour_min ($data1['mJun'] / max($data1['mJun2'], 1)) ?>>
                                                <?= number_format(($data1['mJun'] / max($data1['mJun2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mJun2'],2) ?></td>
                                            <td><?= number_format($data1['mJun'],2) ?></td>
                                            <td <?= colour_min ($data1['mJul'] / max($data1['mJul2'], 1)) ?>>
                                                <?= number_format(($data1['mJul'] / max($data1['mJul2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mJul2'],2) ?></td>
                                            <td><?= number_format($data1['mJul'],2) ?></td>
                                            <td <?= colour_min ($data1['mAug'] / max($data1['mAug2'], 1)) ?>>
                                                <?= number_format(($data1['mAug'] / max($data1['mAug2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mAug2'],2) ?></td>
                                            <td><?= number_format($data1['mAug'],2) ?></td>
                                            <td <?= colour_min ($data1['mSep'] / max($data1['mSep2'], 1)) ?>>
                                                <?= number_format(($data1['mSep'] / max($data1['mSep2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mSep2'],2) ?></td>
                                            <td><?= number_format($data1['mSep'],2) ?></td>
                                            <td <?= colour_min ($data1['mOct'] / max($data1['mOct2'], 1)) ?>>
                                                <?= number_format(($data1['mOct'] / max($data1['mOct2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mOct2'],2) ?></td>
                                            <td><?= number_format($data1['mOct'],2) ?></td>
                                            <td <?= colour_min ($data1['mNov'] / max($data1['mNov2'], 1)) ?>>
                                                <?= number_format(($data1['mNov'] / max($data1['mNov2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mNov2'],2) ?></td>
                                            <td><?= number_format($data1['mNov'],2) ?></td>
                                            <td <?= colour_min ($data1['mDes'] / max($data1['mDes2'], 1)) ?>>
                                                <?= number_format(($data1['mDes'] / max($data1['mDes2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data1['mDec2'],2) ?></td>
                                            <td><?= number_format($data1['mDec'],2) ?></td>
                                        </tr>

                                        <?php } ?>
                                        
                                    </tbody>
                                </table>
                        </div>
                        <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab" tabindex="0">
                            <p></p>
                                <table id="tableUtil3" class="table table-light display nowrap tbl-util" style="width:100%">
                                    <thead class="table-info">
                                        <tr>
                                            <th>Input</th>
                                            <th style="width: 10%;">Line  Productions</th>
                                            <th>FY<?php echo $tYear - 2; ?></th>
                                            <th>FY<?php echo $tYear - 1; ?></th>
                                            <th><?php echo $tYear; ?></th>
                                            <th>Jan(%)</th>
                                            <th>Jan_Capacity</th>
                                            <th>Jan_Result</th>
                                            <th>Feb(%)</th>
                                            <th>Feb_Capacity</th>
                                            <th>Feb_Result</th>
                                            <th>Mar(%)</th>
                                            <th>Mar_Capacity</th>
                                            <th>Mar_Result</th>
                                            <th>Apr(%)</th>
                                            <th>Apr_Capacity</th>
                                            <th>Apr_Result</th>
                                            <th>Mei(%)</th>
                                            <th>Mei_Capacity</th>
                                            <th>Mei_Result</th>
                                            <th>Jun(%)</th>
                                            <th>Jun_Capacity</th>
                                            <th>Jun_Result</th>
                                            <th>Jul(%)</th>
                                            <th>Jul_Capacity</th>
                                            <th>Jul_Result</th>
                                            <th>Agu(%)</th>
                                            <th>Agu_Capacity</th>
                                            <th>Agu_Result</th>
                                            <th>Sep(%)</th>
                                            <th>Sep_Capacity</th>
                                            <th>Sep_Result</th>
                                            <th>Okt(%)</th>
                                            <th>Okt_Capacity</th>
                                            <th>Okt_Result</th>
                                            <th>Nov(%)</th>
                                            <th>Nov_Capacity</th>
                                            <th>Nov_Result</th>
                                            <th>Des(%)</th>
                                            <th>Des_Capacity</th>
                                            <th>Des_Result</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach($datagroup2 as $data2){ 
                                            $util2_prev2 = util_year_group(2, $data2['group2'], $data2['tYear']-2);
                                            $util2_prev  = util_year_group(2, $data2['group2'], $data2['tYear']-1);
                                            $util2_cur   = util_year_group(2, $data2['group2'], $data2['tYear']);
                                            ?>
                                            
                                        <tr>
                                            <td>-</td>
                                            <td style="width: 10%;"><?php echo $data2['group2'] ?></td>
                                            <td><?= $util2_prev2 ?></td>
                                            <td><?= $util2_prev ?></td>
                                            <td><?= $util2_cur ?></td>
                                            <td <?= colour_min ($data2['mJan'] / max($data2['mJan2'], 1)) ?>>
                                                <?= number_format(($data2['mJan'] / max($data2['mJan2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mJan2'],2) ?></td>
                                            <td><?= number_format($data2['mJan'],2) ?></td>
                                            <td <?= colour_min ($data2['mfeb'] / max($data2['mFeb2'], 1)) ?>>
                                                <?= number_format(($data2['mFeb'] / max($data2['mFeb2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mFeb2'],2) ?></td>
                                            <td><?= number_format($data2['mFeb'],2) ?></td>
                                            <td <?= colour_min ($data2['mMar'] / max($data2['mMar2'], 1)) ?>>
                                                <?= number_format(($data2['mMar'] / max($data2['mMar2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mMar2'],2) ?></td>
                                            <td><?= number_format($data2['mMar'],2) ?></td>
                                            <td <?= colour_min ($data2['mApr'] / max($data2['mApr2'], 1)) ?>>
                                                <?= number_format(($data2['mApr'] / max($data2['mApr2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mApr2'],2) ?></td>
                                            <td><?= number_format($data2['mApr'],2) ?></td>
                                            <td <?= colour_min ($data2['mMei'] / max($data2['mMei2'], 1)) ?>>
                                                <?= number_format(($data2['mMei'] / max($data2['mMei2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mMei2'],2) ?></td>
                                            <td><?= number_format($data2['mMei'],2) ?></td>
                                            <td <?= colour_min ($data2['mJun'] / max($data2['mJun2'], 1)) ?>>
                                                <?= number_format(($data2['mJun'] / max($data2['mJun2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mJun2'],2) ?></td>
                                            <td><?= number_format($data2['mJun'],2) ?></td>
                                            <td <?= colour_min ($data2['mJul'] / max($data2['mJul2'], 1)) ?>>
                                                <?= number_format(($data2['mJul'] / max($data2['mJul2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mJul2'],2) ?></td>
                                            <td><?= number_format($data2['mJul'],2) ?></td>
                                            <td <?= colour_min ($data2['mAug'] / max($data2['mAug2'], 1)) ?>>
                                                <?= number_format(($data2['mAug'] / max($data2['mAug2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mAug2'],2) ?></td>
                                            <td><?= number_format($data2['mAug'],2) ?></td>
                                            <td <?= colour_min ($data2['mSep'] / max($data2['mSep2'], 1)) ?>>
                                                <?= number_format(($data2['mSep'] / max($data2['mSep2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mSep2'],2) ?></td>
                                            <td><?= number_format($data2['mSep'],2) ?></td>
                                            <td <?= colour_min ($data2['mOct'] / max($data2['mOct2'], 1)) ?>>
                                                <?= number_format(($data2['mOct'] / max($data2['mOct2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mOct2'],2) ?></td>
                                            <td><?= number_format($data2['mOct'],2) ?></td>
                                            <td <?= colour_min ($data2['mNov'] / max($data2['mNov2'], 1)) ?>>
                                                <?= number_format(($data2['mNov'] / max($data2['mNov2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mNov2'],2) ?></td>
                                            <td><?= number_format($data2['mNov'],2) ?></td>
                                            <td <?= colour_min ($data2['mDes'] / max($data2['mDes2'], 1)) ?>>
                                                <?= number_format(($data2['mDes'] / max($data2['mDes2'], 1) * 100),2) ?></td>
                                            <td><?= number_format($data2['mDec2'],2) ?></td>
                                            <td><?= number_format($data2['mDec'],2) ?></td>
                                        </tr>

                                        <?php } ?>
                                        
                                    </tbody>
                                </table>
                        </div>    
                    </div>
                </div>
            </div>
        </div>
        <!-- start Modal -->
        <form action="<?php echo base_url() ?>/CapacityUtil/input_detail" method="post">
            <div class="modal fade orderdetailsModal" id="viewdetail" tabindex="-1" role="dialog" aria-labelledby=orderdetailsModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="orderdetailsModalLabel">Details</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p class="mb-2">Data: <span class="text-primary"><label for="" id="lblname" class="col-sm-8 col-form-label product_id"></label><input type="hidden" class="product_id" name="product_id" id="product_id"/></span></p>
                            <p class="mb-4">Tahun: <span class="text-primary"><label for="" id="lblyear" class="col-sm-3 col-form-label product_name"></label><input type="hidden" class="product_name" name="product_name" id="product_name"/></span></p>
                            <div class="row mb-4">
                                <label for="horizontal-email-input" class="col-sm-3 col-form-label">Bulan</label>
                                <div class="col-sm-9">
                                    <select id="formrow-inputState" name="bulan" class="form-select">
                                        <option selected>Choose...</option>
                                        <option value="1">Januari</option>
                                        <option value="2">Februari</option>
                                        <option value="3">Maret</option>
                                        <option value="4">April</option>
                                        <option value="5">Mei</option>
                                        <option value="6">Juni</option>
                                        <option value="7">Juli</option>
                                        <option value="8">Agustus</option>
                                        <option value="9">September</option>
                                        <option value="10">Oktober</option>
                                        <option value="11">November</option>
                                        <option value="12">Desember</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <label for="horizontal-password-input" class="col-sm-3 col-form-label">Capacity Unit</label>
                                <div class="col-sm-9">
                                    <input type="Number" class="form-control" id="horizontal-password-input" name="capacity_unit" placeholder="Input Capacity Unit" step="0.001">
                                </div>
                            </div>
                            <div class="row mb-4">
                                <label for="horizontal-password-input" class="col-sm-3 col-form-label">Actual Output</label>
                                <div class="col-sm-9">
                                    <input type="Number" class="form-control" id="horizontal-password-input" name="actual_output" placeholder="Input Actual Output" step="0.001">
                                </div>
                            </div>
                            <div class="row justify-content-end">
                                <div class="col-sm-9">
                                    <div>
                                        <button type="submit" class="btn btn-primary w-md">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- end modal -->
        <?= $this->include('partials/footer') ?>
    </div>
</div>

<?= $this->include('partials/right-sidebar') ?>

<?= $this->include('partials/vendor-scripts') ?>

<!-- Datatables -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
 <script src="https://cdn.datatables.net/v/dt/jq-3.6.0/jszip-2.5.0/dt-1.13.4/af-2.5.3/b-2.3.6/b-colvis-2.3.6/b-html5-2.3.6/b-print-2.3.6/cr-1.6.2/date-1.4.0/fc-4.2.2/fh-3.3.2/kt-2.8.2/r-2.4.1/rg-1.3.1/rr-1.3.3/sc-2.1.1/sb-1.4.2/sp-2.1.2/sl-1.6.2/sr-1.2.2/datatables.min.js"></script>

<script src="<?php echo base_url() ?>/assets/js/app.js"></script>

<!--<script src="<?php echo base_url() ?>/assets/vendor/DataTables/datatables.js"></script>-->
 

<script>
    $(document).ready(function () {
        var dTable = $('#tableUtil').DataTable( {
            dom: "Bfrtip",
            scrollX: true,
            responsive: false,
            pageLength: 10,
            columnDefs: [
                   {
                       "targets": [6,7,9,10,12,13,15,16,18,19,21,22,24,25,27,28,30,31,33,34,36,37,39,40],
                       "visible": false
                        
                   }
               ],
            buttons: [ {
                            extend: 'colvis',
                            text: 'Column Visiblity',
                            collectionLayout: 'fixed columns',
                            collectionTitle: 'Column Visibility Control',
                            columns: ':not(:first-child)'
                        },
                        {
                            text: 'Switch Display',
                            action: function ( e, dt, node, config ) {
                            dTable.columns([6,7,9,10,12,13,15,16,18,19,21,22,24,25,27,28,30,31,33,34,36,37,39,40]).visible(!this.active());
                            this.active(!this.active());
                             }
                        }],
            fixedColumns: {
                leftColumns: 5
            }
        } );  
    });
</script>

<script>
    $(document).ready(function () {
        var dTable = $('#tableUtil2').DataTable( {
            dom: "Bfrtip",
            scrollX: true,
            responsive: false,
            pageLength: 10,
            columnDefs: [
                   {
                       "targets": [6,7,9,10,12,13,15,16,18,19,21,22,24,25,27,28,30,31,33,34,36,37,39,40],
                       "visible": false
                        
                   }
               ],
            buttons: [ {
                            extend: 'colvis',
                            text: 'Column Visiblity',
                            collectionLayout: 'fixed columns',
                            collectionTitle: 'Column Visibility Control',
                            columns: ':not(:first-child)'
                        },
                        {
                            text: 'Switch Display',
                            action: function ( e, dt, node, config ) {
                            dTable.columns([6,7,9,10,12,13,15,16,18,19,21,22,24,25,27,28,30,31,33,34,36,37,39,40]).visible(!this.active());
                            this.active(!this.active());
                             }
                        }],
            fixedColumns: {
                leftColumns: 5
            }
        } );  
    });
</script>

<script>
    $(document).ready(function () {
        var dTable = $('#tableUtil3').DataTable( {
            dom: "Bfrtip",
            scrollX: true,
            responsive: false,
            pageLength: 10,
            columnDefs: [
                   {
                       "targets": [6,7,9,10,12,13,15,16,18,19,21,22,24,25,27,28,30,31,33,34,36,37,39,40],
                       "visible": false
                        
                   }
               ],
            buttons: [ {
                            extend: 'colvis',
                            text: 'Column Visiblity',
                            collectionLayout: 'fixed columns',
                            collectionTitle: 'Column Visibility Control',
                            columns: ':not(:first-child)'
                        },
                        {
                            text: 'Switch Display',
                            action: function ( e, dt, node, config ) {
                            dTable.columns([6,7,9,10,12,13,15,16,18,19,21,22,24,25,27,28,30,31,33,34,36,37,39,40]).visible(!this.active());
                            this.active(!this.active());
                             }
                        }],
            fixedColumns: {
                leftColumns: 5
            }
        } );  
    });
</script>



<script>
    $(document).ready(function(){
        $('.btn-rounded').on('click',function(){
            // get data from button edit
            const id = $(this).data('id');
            const year = $(this).data('year');
            const vket = $(this).data('vket');
            // Set data to Form Edit
            $('.product_id').val(id);
            $('.product_name').val(year);
            document.getElementById('lblname').innerText = vket;
            document.getElementById('lblyear').innerText = year;
            $('#viewdetail').modal('show');
        });

    });
</script>

</body>

</html>