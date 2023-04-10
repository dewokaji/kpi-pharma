<!doctype html>
<html lang="en">

<head>

    <?= $title_meta ?>

    <?= $this->include('partials/head-css') ?>
    
   <!-- Data Tables -->
   	
    <link href="https://cdn.datatables.net/v/dt/jq-3.6.0/jszip-2.5.0/dt-1.13.4/af-2.5.3/b-2.3.6/b-colvis-2.3.6/b-html5-2.3.6/b-print-2.3.6/cr-1.6.2/date-1.4.0/fc-4.2.2/fh-3.3.2/kt-2.8.2/r-2.4.1/rg-1.3.1/rr-1.3.3/sc-2.1.1/sb-1.4.2/sp-2.1.2/sl-1.6.2/sr-1.2.2/datatables.min.css" rel="stylesheet"/>
 
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
  background-color: #0069d9;
  color: #fff;
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
                                            <h4>Production Output Unit <?= $session->get('compName'); ?></h4>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <form action="<?= base_url('ProdOutput/export_excel_prod'); ?>" method="post">
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
                                    Unit Budget </button>
                                <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">
                                    Unit Budget Last Year</button>
                                <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">
                                    Actual Unit</button>
                                <button class="nav-link" id="nav-disabled-tab" data-bs-toggle="tab" data-bs-target="#nav-disabled" type="button" role="tab" aria-controls="nav-disabled" aria-selected="false">
                                    Actual Unit Last Year</button>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
                                
                                <p></p>    
                                <table id="tableBudget" class="table table-light display nowrap tableOutput" style="width:100%">
                                    <thead class="table-info">
                                        <tr>
                                            <th>Input</th>
                                            <th style="width: 10%;">Product Items</th>
                                            <th><?php echo $tYear; ?></th>
                                            <th>January</th>
                                            <th>February</th>
                                            <th>March</th>
                                            <th>April</th>
                                            <th>May</th>
                                            <th>June</th>
                                            <th>July</th>
                                            <th>August</th>
                                            <th>September</th>
                                            <th>Oktober</th>
                                            <th>November</th>
                                            <th>Desember</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        foreach ($datas as $row) {
                                                
                                                ?>
                                        <tr>
                                            <td>
                                                <a href="#" id="edit_budget" class="btn btn-primary btn-sm btn-rounded editBudjet" data-id="<?php echo $row['pItemId'] ?>" data-vket="<?php echo $row['pItemName']?>" data-year="<?php echo $row['tYear'] ?>" data-opsi="Budget">
                                                <i class="bx bx-pencil"></i>
                                                </a>
                                            </td>
                                            <td style="width: 10%;"><?= $row['pItemName'] ?></td>
                                            <td><?= $row['tYear'] ?></td>
                                            <td><?= number_format($row['mJan'],2) ?></td>
                                            <td><?= number_format($row['mFeb'],2) ?></td>
                                            <td><?= number_format($row['mMar'],2) ?></td>
                                            <td><?= number_format($row['mApr'],2) ?></td>
                                            <td><?= number_format($row['mMei'],2) ?></td>
                                            <td><?= number_format($row['mJun'],2) ?></td>
                                            <td><?= number_format($row['mJul'],2) ?></td>
                                            <td><?= number_format($row['mAug'],2) ?></td>
                                            <td><?= number_format($row['mSep'],2) ?></td>
                                            <td><?= number_format($row['mOct'],2) ?></td>
                                            <td><?= number_format($row['mNov'],2) ?></td>
                                            <td><?= number_format($row['mDec'],2) ?></td>
                                            
                                        </tr>
                                        <?php }?>
                                    </tbody>
                                </table>
                                            
                            </div>
                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">

                            <p></p>    
                                <table id="tableBudgetPrev" class="table table-light display nowrap tableOutput" style="width:100%">
                                    <thead class="table-info">
                                        <tr>
                                            <th>Input</th>
                                            <th style="width: 10%;">Product Items</th>
                                            <th>Tahun</th>
                                            <th>January</th>
                                            <th>February</th>
                                            <th>March</th>
                                            <th>April</th>
                                            <th>May</th>
                                            <th>June</th>
                                            <th>July</th>
                                            <th>August</th>
                                            <th>September</th>
                                            <th>Oktober</th>
                                            <th>November</th>
                                            <th>Desember</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        foreach ($datas_prev as $row) {
                                                
                                                ?>
                                        <tr>
                                            <td>
                                                -
                                            </td>
                                            <td style="width: 10%;"><?= $row['pItemName'] ?></td>
                                            <td><?= $row['tYear'] ?></td>
                                            <td><?= number_format($row['mJan'],2) ?></td>
                                            <td><?= number_format($row['mFeb'],2) ?></td>
                                            <td><?= number_format($row['mMar'],2) ?></td>
                                            <td><?= number_format($row['mApr'],2) ?></td>
                                            <td><?= number_format($row['mMei'],2) ?></td>
                                            <td><?= number_format($row['mJun'],2) ?></td>
                                            <td><?= number_format($row['mJul'],2) ?></td>
                                            <td><?= number_format($row['mAug'],2) ?></td>
                                            <td><?= number_format($row['mSep'],2) ?></td>
                                            <td><?= number_format($row['mOct'],2) ?></td>
                                            <td><?= number_format($row['mNov'],2) ?></td>
                                            <td><?= number_format($row['mDec'],2) ?></td>
                                            
                                        </tr>
                                        <?php }?>
                                    </tbody>
                                </table>

                            </div>
                            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab" tabindex="0">
                            
                                <p></p>    
                                <table id="tableActual" class="table table-light display nowrap tableOutput" style="width:100%">
                                    <thead class="table-info">
                                        <tr>
                                            <th>Input</th>
                                            <th style="width: 10%;">Product Items</th>
                                            <th>Tahun</th>
                                            <th>January</th>
                                            <th>February</th>
                                            <th>March</th>
                                            <th>April</th>
                                            <th>May</th>
                                            <th>June</th>
                                            <th>July</th>
                                            <th>August</th>
                                            <th>September</th>
                                            <th>Oktober</th>
                                            <th>November</th>
                                            <th>Desember</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        foreach ($datas as $row) {
                                                ?>
                                        
                                        <tr>
                                            <td>
                                                <a href="#" id="edit_actual" class="btn btn-primary btn-sm btn-rounded editActual" data-id="<?php echo $row['pItemId'] ?>" data-vket="<?php echo $row['pItemName']?>" data-year="<?php echo $row['tYear'] ?>" data-opsi="Actual">
                                                <i class="bx bx-pencil"></i>
                                                </a>
                                            </td>
                                            <td style="width: 10%;"><?= $row['pItemName'] ?></td>
                                            <td><?= $row['tYear'] ?></td>
                                            <td><?= number_format($row['mJan2'],2) ?></td>
                                            <td><?= number_format($row['mFeb2'],2) ?></td>
                                            <td><?= number_format($row['mMar2'],2) ?></td>
                                            <td><?= number_format($row['mApr2'],2) ?></td>
                                            <td><?= number_format($row['mMei2'],2) ?></td>
                                            <td><?= number_format($row['mJun2'],2) ?></td>
                                            <td><?= number_format($row['mJul2'],2) ?></td>
                                            <td><?= number_format($row['mAug2'],2) ?></td>
                                            <td><?= number_format($row['mSep2'],2) ?></td>
                                            <td><?= number_format($row['mOct2'],2) ?></td>
                                            <td><?= number_format($row['mNov2'],2) ?></td>
                                            <td><?= number_format($row['mDec2'],2) ?></td>
                                            
                                        </tr>
                                        <?php }?>
                                    </tbody>
                                </table>

                            </div>
                            <div class="tab-pane fade" id="nav-disabled" role="tabpanel" aria-labelledby="nav-disabled-tab" tabindex="0">
                            
                            <p></p>    
                                <table id="" class="table table-light display nowrap tableOutput" style="width:100%">
                                    <thead class="table-info">
                                        <tr>
                                            <th>Input</th>
                                            <th style="width: 10%;">Product Items</th>
                                            <th>Tahun</th>
                                            <th>January</th>
                                            <th>February</th>
                                            <th>March</th>
                                            <th>April</th>
                                            <th>May</th>
                                            <th>June</th>
                                            <th>July</th>
                                            <th>August</th>
                                            <th>September</th>
                                            <th>Oktober</th>
                                            <th>November</th>
                                            <th>Desember</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        //foreach ($datas_prev as $row) {
                                                ?>
                                        
                                        <tr>
                                            <td>
                                                -
                                            </td>
                                            <td style="width: 10%;"><?= $row['pItemName'] ?></td>
                                            <td><?= $row['tYear'] ?></td>
                                            <td><?= number_format($row['mJan2'],2) ?></td>
                                            <td><?= number_format($row['mFeb2'],2) ?></td>
                                            <td><?= number_format($row['mMar2'],2) ?></td>
                                            <td><?= number_format($row['mApr2'],2) ?></td>
                                            <td><?= number_format($row['mMei2'],2) ?></td>
                                            <td><?= number_format($row['mJun2'],2) ?></td>
                                            <td><?= number_format($row['mJul2'],2) ?></td>
                                            <td><?= number_format($row['mAug2'],2) ?></td>
                                            <td><?= number_format($row['mSep2'],2) ?></td>
                                            <td><?= number_format($row['mOct2'],2) ?></td>
                                            <td><?= number_format($row['mNov2'],2) ?></td>
                                            <td><?= number_format($row['mDec2'],2) ?></td>
                                            
                                        </tr>
                                        <?php// }?>
                                    </tbody>
                                </table>
                                        
                            </div>
                        </div>

                        
                    </div>
                </div>
            </div>
        </div>
        <!-- start Modal -->
        <form action="<?php echo base_url() ?>/ProdOutput/input_qty" method="post">
            <div class="modal fade orderdetailsModal" id="modalView" tabindex="-1" role="dialog" aria-labelledby=orderdetailsModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="orderdetailsModalLabel">Details</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p class="mb-2"> 
                                <span class="text-primary"><label for="" id="lblopsi" class="col-sm-8 col-form-label opsi"></label>
                                    <input type="hidden" class="opsi" name="opsi" id="opsi"/>
                                </span>
                            </p>
                            <p class="mb-2">Data: 
                                <span class="text-primary"><label for="" id="lblname" class="col-sm-8 col-form-label product_id"></label>
                                <input type="hidden" class="product_id" name="product_id" id="product_id"/></span></p>
                            
                            <p class="mb-4">Tahun: 
                                <span class="text-primary"><label for="" id="lblyear" class="col-sm-3 col-form-label product_name"></label>
                                <input type="hidden" class="product_name" name="product_name" id="product_name"/></span></p>
                            <div class="row mb-4">
                                <label for="horizontal-email-input" class="col-sm-3 col-form-label">Bulan</label>
                                <div class="col-sm-9">
                                    <select id="formrow-inputState" name="bulan" class="form-select" required>
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
                                <label for="horizontal-password-input" class="col-sm-3 col-form-label">Quantity Unit</label>
                                <div class="col-sm-9">
                                    <input type="Number" class="form-control" id="qty_unit" name="qty_unit" placeholder="Input Quantity Unit" step="0.001">
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
   
<!--<script src="https://cdn.datatables.net/v/bs5/dt-1.13.4/b-2.3.6/fc-4.2.2/fh-3.3.2/r-2.4.1/sc-2.1.1/sl-1.6.2/datatables.min.js"></script>-->

<script src="<?php echo base_url() ?>/assets/js/app.js"></script>

<script>
    $(document).ready(function () {
        $('.tableOutput').DataTable( {
            dom: "Bfrtip",
            scrollX: true,
            responsive: false,
            
            buttons: [ {
                            extend: 'colvis',
                            text: 'Column Visiblity',
                            columns: ':not(:first-child)'
                        },
                        {
                            text: 'Remove Hidden Columns',
                            action: function ( e, dt, node, config ) {
                                var hiddenCols = dt.columns(':not(:visible)').indexes().toArray();
                                dt.columns(hiddenCols).remove().draw();
                            }
                        } ],
            fixedColumns: {
                leftColumns: 2
            }
        
        } );

    });
</script>
<!-- Action kelola Budget -->
<script>
    $(document).ready(function(){
        $('.editBudjet').on('click',function(){
            // get data from button edit
            const id = $(this).data('id');
            const year = $(this).data('year');
            const vket = $(this).data('vket');
            const opsi = $(this).data('opsi');
            // Set data to Form Edit
            $('.product_id').val(id);
            $('.product_name').val(year);
            $('.opsi').val(opsi);
            document.getElementById('lblname').innerText = vket;
            document.getElementById('lblyear').innerText = year;
            document.getElementById('lblopsi').innerText = 'Kelola data Production Output in Unit ' +opsi;
            $('#modalView').modal('show');
        });

    });
</script>
<!-- Action kelola Actual -->

<script>
    
    $(document).ready(function(){
        $('.editActual').on('click',function(){
            // get data from button edit
            const id = $(this).data('id');
            const year = $(this).data('year');
            const vket = $(this).data('vket');
            const opsi = $(this).data('opsi');
            // Set data to Form Edit
            $('.product_id').val(id);
            $('.product_name').val(year);
            $('.opsi').val(opsi);
            document.getElementById('lblname').innerText = vket;
            document.getElementById('lblyear').innerText = year;
            document.getElementById('lblopsi').innerText = 'Kelola data Production Output in Unit ' +opsi;
            $('#viewdetail').modal('show');
        });

    });
    
</script>

</body>

</html>