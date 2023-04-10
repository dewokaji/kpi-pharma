<!DOCTYPE html>
<html lang="en">

    <head>
        
        <?= $title_meta ?>

        <?= $this->include('partials/head-css') ?>

    </head>

    <?= $this->include('partials/body') ?>

        <!-- Begin page -->
        <div id="layout-wrapper">

            <?= $this->include('partials/menu') ?>

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">
            
                <div class="page-content">
                
                    <div class="container-fluid">
                        
                        <?= $page_title ?>
                        
                        
                    
                        <!-- Start Information -->
                        <div class="row">
                            <div class="col-sm-4">
                                <h1 class="font-size-14 mb-0">KPI to Target</h1>
                            </div>
                        </div>
                            <div class="row">
                                <!-- Start COGM Unit-->
                                <div class="col-sm-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="col-sm-7" height="300">
                                                <div class="d-flex align-items-center mb-3">
                                                    <div class="avatar-xs me-3">
                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary font-size-18">
                                                            <i class="bx bx-box"></i>
                                                        </span>
                                                    </div>
                                                    <h5 class="font-size-14 mb-0">COGM Unit</h5>
                                                </div>
                                                <div class="text-muted mt-4">
                                                    <h4><label id="val1"></label></h4>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- start mixed chart COGM -->
                                            <div id="mix-line-bar-cogm" class="e-charts" style="height: 150px;" ></div>
                                        <!-- end mixed chart COGM-->
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table table-sm table-light">
                                                    <thead class="table-info" id="tblCOGM">
                                                    <tr>
                                                            <th><p>Current A-MTD to Last Period A-MTD</p></th>
                                                            <th><h4><label id="COGMCAMTD"></label> %</h4></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <div class="text-muted">
                                                        <!-- <tr>
                                                                <td><p>Last Period A-MTD</p></td>
                                                                <td><h5><label id="COGMLPMTD"></label> %</h5></td>
                                                        </tr> -->
                                                        <tr>
                                                            <td>COGM total Actual (inhouse)</td>
                                                            <td><label id="lblCOGMA-C"></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>COGM total Standard (inhouse)</td>
                                                            <td><label id="lblCOGMS-C"></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Unit Produced Actual</td>
                                                            <td><label id="UPA"></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>COGM total Actual Last Year(inhouse)</td>
                                                            <td><label id="lblCOGMALY-C"></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Unit Produced Actual Last Year</td>
                                                            <td><label id="UPALY"></label></td>
                                                        </tr>
                                                    </div>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End COGM Unit-->

                                <!-- Start FOH Unit-->
                                    <div class="col-sm-6" >
                                        <div class="card" >
                                            <div class="card-body" >
                                                <div class="d-flex align-items-center mb-3">
                                                    <div class="avatar-xs me-3">
                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary font-size-18">
                                                            <i class="bx bx-archive-in"></i>
                                                        </span>
                                                    </div>
                                                    <h5 class="font-size-14 mb-0">FOH Unit</h5>
                                                </div>
                                                <div class="text-muted mt-4">
                                                    <h4><label id="val2"></label></h4>
                                                    <!-- <div class="d-flex">
                                                        <span class="badge badge-soft-danger font-size-12"> - 40 % </span> <span class="ms-2 text-truncate">From last year current month</span>
                                                    </div> -->
                                                </div>
                                            </div>
                                            <!-- start mixed chart FOH -->
                                                <div id="mix-line-bar-foh" class="e-charts" style="height:150px"></div>
                                            <!-- end mixed chart FOH-->
                                            <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table table-sm table-light">
                                                    <tbody>
                                                    <tr class="table-info" id="tblFOH">
                                                            <th><p>Current A-MTD to Last Period A-MTD</p></th>
                                                            <th><h4><label id="FOHCAMTD"></label> %</h4></th>
                                                    </tr>
                                                    <div class="text-muted">
                                                        <!-- <tr>
                                                                <td><p>Last Period A-MTD</p></td>
                                                                <td><h5><label id="FOHLPMTD"></label> %</h5></td>
                                                        </tr> -->
                                                        <tr>
                                                            <td>FOH Cost Actual</td>
                                                            <td><label id="FCA"></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>FOH Cost Actual Last Year</td>
                                                            <td><label id="FCALY"></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>FOH Cost Standard</td>
                                                            <td><label id="FCS"></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>RM Cost Actual</td>
                                                            <td><label id="RCA"></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>PM Cost Actual</td>
                                                            <td><label id="PCA"></label></td>
                                                        </tr>
                                                    </div>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!-- End FOH Unit-->
                            <!-- Start DL Unit-->
                            <div class="col-sm-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="d-flex align-items-center mb-3">
                                                    <div class="avatar-xs me-3">
                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary font-size-18">
                                                            <i class="bx bx-archive-in"></i>
                                                        </span>
                                                    </div>
                                                    <h5 class="font-size-14 mb-0">DL Unit</h5>
                                                </div>
                                                <div class="text-muted mt-4">
                                                    <h4><label id="val3"></label></h4>
                                                </div>
                                            </div>
                                            <!-- start mixed chart DL -->
                                                <div id="mix-line-bar-dl" class="e-charts" style="height:150px"></div>
                                            <!-- end mixed chart DL -->
                                            <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table table-sm table-light">
                                                    <tbody>
                                                            <tr class="table-info" id="tblDL">
                                                                <th><p>Current A-MTD to Last Period A-MTD</p></th>
                                                                <th><h4><label id="DLCAMTD"></label> %</h4></th>
                                                            </tr>
                                                    <div class="text-muted">
                                                        <tr>
                                                            <td>DL Cost Actual</td>
                                                            <td><label id="lblDLCA"></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>DL Cost Actual Last Year</td>
                                                            <td><label id="lblDLCALY"></label></td>
                                                        </tr>
                                                    </div>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                <!-- End DL Unit-->
                                
                            </div>
                            <!-- mixed chart OF -->
                            <div class="col-sm-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="d-flex align-items-center mb-3">
                                                    <div class="avatar-xs me-3">
                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary font-size-18">
                                                            <i class="bx bx-archive-in"></i>
                                                        </span>
                                                    </div>
                                                    <h5 class="font-size-14 mb-0">Order Fulfillment</h5>
                                                </div>
                                                <div class="text-muted mt-4">
                                                    <h4><label id="val4"></label></h4>
                                                </div>
                                            </div>
                                            <!-- start mixed chart OF -->
                                                <div id="mix-line-bar-of" class="e-charts" style="height:150px"></div>
                                            <!-- end mixed chart OF -->
                                            <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table table-sm table-light">
                                                    <tbody>
                                                            <tr class="table-info" id="tblOF">
                                                                <th><p>Current A-MTD to Last Period A-MTD</p></th>
                                                                <th><h4><label id="OFCAMTD"></label> %</h4></th>
                                                            </tr>
                                                    <div class="text-muted">
                                                        <tr>
                                                            <td>OF Cost Actual</td>
                                                            <td><label id="lblOFCA"></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>OF Cost Actual Last Year</td>
                                                            <td><label id="lblOFCALY"></label></td>
                                                        </tr>
                                                    </div>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                                <!-- Start Raw Data -->
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="d-flex align-items-center mb-3">
                                                    <h5 class="font-size-14 mb-0">Category Raw Data</h5>
                                                </div>
                                                <div class="text-muted mt-6">
                                                    <select class="form-select form-select-sm" id="optrawdata" onclick="myFunction()">
                                                        <option value="Cost" selected>COST</option>
                                                        <option value="Incident" >INCIDENT</option>
                                                        <option value="Learning">LEARNING</option>
                                                        <option value="Production">PRODUCTION</option>
                                                        <option value="Quality">QUALITY</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="card" >
                                            <div class="card-body">
                                                <div class="d-flex align-items-center mb-3">
                                                    <h5 class="font-size-14 mb-0">Detail Raw Data</h5>
                                                </div>
                                                <div class="text-muted mt-6">
                                                    <div class="input-group input-group-sm">
                                                        <select class="form-select form-select-sm" id="optChartC" onclick="myFunctionC()">
                                                            <?php foreach($C as $row){?>
                                                                <option value="<?php echo $row['id']?>"><?php echo $row['vKet'] ?></option>
                                                            <?php }?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="text-muted mt-6">
                                                    <div class="input-group input-group-sm">
                                                        <select class="form-select form-select-sm" id="optChartI" onclick="myFunctionI()">
                                                            <?php foreach($I as $row){?>
                                                                <option value="<?php echo $row['id']?>"><?php echo $row['vKet'] ?></option>
                                                            <?php }?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="text-muted mt-6">
                                                    <div class="input-group input-group-sm">
                                                        <select class="form-select form-select-sm" id="optChartL" onclick="myFunctionL()">
                                                            <?php foreach($L as $row){?>
                                                                <option value="<?php echo $row['id']?>"><?php echo $row['vKet'] ?></option>
                                                            <?php }?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="text-muted mt-6">
                                                    <div class="input-group input-group-sm">
                                                        <select class="form-select form-select-sm" id="optChartP" onclick="myFunctionP()">
                                                            <?php foreach($P as $row){?>
                                                                <option value="<?php echo $row['id']?>"><?php echo $row['vKet'] ?></option>
                                                            <?php }?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="text-muted mt-6">
                                                    <div class="input-group input-group-sm">
                                                        <select class="form-select form-select-sm" id="optChartQ" onclick="myFunctionQ()">
                                                            <?php foreach($Q as $row){?>
                                                                <option value="<?php echo $row['id']?>"><?php echo $row['vKet'] ?></option>
                                                            <?php }?>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Raw Data -->
                    <!-- Start C -->
                    <div class="row" id="ChartC">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="clearfix">
                                        <h4 class="card-title mb-4">Cost</h4>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="text-muted">
                                                <div class="mb-4">
                                                    <p>This month</p>
                                                    <h4><label id="valueC1">-</label></h4>
                                                    <!-- <div><span class="badge badge-soft-success font-size-12 me-1"> + 10% </span> From previous period</div> -->
                                                </div>
                                                <div class="mt-4">
                                                    <p class="mb-2">Last month</p>
                                                    <h5><label id="valueC2">-</label></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <?php foreach ($C as $row){?>
                                                <div id="line-chartC-<?php echo $row['id']?>" class="apex-charts" dir="ltr"></div>
                                            <?php }?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End C -->
                    <!-- Start I -->
                    <div class="row" id="ChartI">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="clearfix">
                                        <h4 class="card-title mb-4">Incident</h4>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="text-muted">
                                                <div class="mb-4">
                                                    <p>This month</p>
                                                    <h4><label id="valueI1">-</label></h4>
                                                    <!-- <div><span class="badge badge-soft-success font-size-12 me-1"> + 2 </span> From previous period</div> -->
                                                </div>    
                                                <div class="mt-4">
                                                    <p class="mb-2">Last month</p>
                                                    <h5><label id="valueI2">-</label></h5>
                                                </div>    
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <?php foreach ($I as $row){?>
                                                <div id="line-chartI-<?php echo $row['id']?>" class="apex-charts" dir="ltr"></div>
                                            <?php }?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End I -->
                    <!-- Start L -->
                    <div class="row" id="ChartL">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="clearfix">
                                        <h4 class="card-title mb-4">Learning</h4>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="text-muted">
                                                <div class="mb-4">
                                                    <p>This month</p>
                                                    <h4><label id="valueL1">-</label></h4>
                                                    <!-- <div><span class="badge badge-soft-success font-size-12 me-1"> + 0 </span> From previous period</div> -->
                                                </div>
                                                <div class="mt-4">
                                                    <p class="mb-2">Last month</p>
                                                    <h5><label id="valueL2">-</label></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <?php foreach ($L as $row){?>
                                                <div id="line-chartL-<?php echo $row['id']?>" class="apex-charts" dir="ltr"></div>
                                            <?php }?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End L -->
                    <!-- Start P -->
                    <div class="row" id="ChartP">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="clearfix">
                                        <h4 class="card-title mb-4">Production</h4>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="text-muted">
                                                <div class="mb-4">
                                                    <p>This month</p>
                                                    <h4><label id="valueP1">-</label></h4>
                                                    <!-- <div><span class="badge badge-soft-success font-size-12 me-1"> - 0.30% </span> From previous period</div> -->
                                                </div>
                                                <div class="mt-4">
                                                    <p class="mb-2">Last month</p>
                                                    <h5><label id="valueP2">-</label></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <?php foreach ($P as $row){?>
                                                <div id="line-chartP-<?php echo $row['id']?>" class="apex-charts" dir="ltr"></div>
                                            <?php }?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End P -->
                    <!-- Start Q -->
                    <div class="row" id="ChartQ">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="clearfix">
                                        <h4 class="card-title mb-4">Quality</h4>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="text-muted">
                                                <div class="mb-4">
                                                    <p>This month</p>
                                                    <h4><label id="valueQ1">-</label></h4>
                                                    <!-- <div><span class="badge badge-soft-success font-size-12 me-1"> + 7 </span> From previous period</div> -->
                                                </div>
                                                <div class="mt-4">
                                                    <p class="mb-2">Last month</p>
                                                    <h5><label id="valueQ2">-</label></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <?php foreach ($Q as $row){?>
                                                <div id="line-chartQ-<?php echo $row['id']?>" class="apex-charts" dir="ltr"></div>
                                            <?php }?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Q -->
                            </div>
                        </div>
                        <!-- End Information -->



                </div>
                </div>
                    <!-- container-fluid -->
            </div>
                <!-- End Page-content -->



                <?= $this->include('partials/footer') ?>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->
        <?= $this->include('partials/right-sidebar') ?>

        <?= $this->include('partials/vendor-scripts') ?>

        <!-- apexcharts -->
        <script src="<?php echo base_url(); ?>/assets/libs/apexcharts/apexcharts.min.js"></script>
        <script src="<?php echo base_url(); ?>/assets/libs/echarts/echarts.min.js"></script>
        <!-- dashboard init -->
        <script src="<?php echo base_url(); ?>/assets/js/pages/dashboard.apexcharts.init.js"></script>
        <!-- google maps api -->
        <script src="https://maps.google.com/maps/api/js?key=AIzaSyCtSAR45TFgZjOs4nBFFZnII-6mMHLfSYI"></script>

        <!-- Gmaps file -->
        <script src="assets/libs/gmaps/gmaps.min.js"></script>
        
        <!-- demo codes -->
        <script src="assets/js/pages/dashboard-gmaps.init.js"></script>   

        <script src="assets/js/app.js"></script>

        <!-- App js -->
        <script src="<?php echo base_url(); ?>/assets/js/app.js"></script>

    </body>

</html>