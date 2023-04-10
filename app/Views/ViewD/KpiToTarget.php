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
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="col-5">
                                    <div class="row mb-4">
                                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Tahun</label>
                                        <div class="col-sm-4">
                                            <select id="formrow-inputState" class="form-select">
                                                <option value="" selected>Choose...</option>
                                                <option value="2021">2021</option>
                                                <option value="2022">2022</option>
                                                <option value="2023">2023</option>
                                                <option value="2024">2024</option>
                                                <option value="2025">2025</option>
                                                <option value="2026">2026</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-2">
                                            <div><a target="_blank" href="kpi-export-excel" class="btn btn-primary w-md">To Excel</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-20">
                        <div class="card">
                            <div class="card-body">
                                <table class="table dt-responsive w-20 table-light">
                                    <tr class="table-info">
                                        <td width="100">KPI</td>
                                        <td width="20"></td>
                                        <td width="50">JAN</td>
                                        <td width="50">FEB</td>
                                        <td width="50">MAR</td>
                                        <td width="50">APR</td>
                                        <td width="50">MAY</td>
                                        <td width="50">JUN</td>
                                        <td width="50">JUL</td>
                                        <td width="50">AUG</td>
                                        <td width="50">SEP</td>
                                        <td width="50">OCT</td>
                                        <td width="50">NOV</td>
                                        <td width="50">DEC</td>
                                        <!-- <td width="50">YTD 2022</td> -->
                                    </tr>
                                    <?php foreach ($datas as $rows) {?>
                                    <tr>
                                        <td><?php echo $rows['vKet']?></td>
                                        <td>MTD</td>
                                        <td><?php echo substr(number_format($rows['tResultMTDJan'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDfeb'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDMar'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDApr'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDMei'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDJun'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDJul'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDAug'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDSep'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDOkt'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDNov'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultMTDDes'],2),0,5)?></td>
                                        <!-- <td></td> -->
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>YTD</td>
                                        <td><?php echo substr(number_format($rows['tResultYTDJan'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDFeb'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDMar'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDApr'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDMei'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDJun'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDJul'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDAug'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDSep'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDOkt'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDNov'],2),0,5)?></td>
                                        <td><?php echo substr(number_format($rows['tResultYTDDes'],2),0,5)?></td>
                                        <!-- <td></td> -->
                                    </tr>
                                    <?php }?>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?= $this->include('partials/footer') ?>
</div>

<?= $this->include('partials/right-sidebar') ?>

<?= $this->include('partials/vendor-scripts') ?>

<script src="<?php echo base_url() ?>/assets/js/app.js"></script>

</body>

</html>