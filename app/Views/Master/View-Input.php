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
                                            <div><a target="_blank" href="raw-export-excel" class="btn btn-primary w-md">To Excel</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <table id="datatable" class="table dt-responsive nowrap w-100 table-light">
                            <thead class="table-info">
                                <tr>
                                    <th>Raw Data</th>
                                    <th>Tahun</th>
                                    <th>Jan</th>
                                    <th>Feb</th>
                                    <th>Mar</th>
                                    <th>Apr</th>
                                    <th>Mei</th>
                                    <th>Jun</th>
                                    <th>Jul</th>
                                    <th>Agu</th>
                                    <th>Sep</th>
                                    <th>Okt</th>
                                    <th>Nov</th>
                                    <th>Des</th>
                                    <th>Input Data</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    foreach ($datas as $row) {
                                ?>
                                <tr>
                                    <td><?php echo $row['vKet'] ?></td>
                                    <td><?php echo $row['tYear'] ?></td>
                                    <td><?php echo substr(number_format($row['mJan'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mFeb'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mMar'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mApr'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mMei'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mJun'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mJul'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mAug'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mSep'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mOct'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mNov'],2),0,5) ?></td>
                                    <td><?php echo substr(number_format($row['mDec'],2),0,5) ?></td>
                                    <td>
                                        <!-- Button trigger modal -->
                                        <a href="#" class="btn btn-primary btn-sm btn-rounded" data-id="<?php echo $row['id'] ?>" data-vket="<?php echo $row['vKet']?>" data-year="<?php echo $row['tYear'] ?>">
                                            Input Data
                                        </>
                                    </td>
                                </tr>
                                <?php }?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- start Modal -->
        <form action="<?php echo base_url() ?>/Master/input_detail" method="post">
            <div class="modal fade orderdetailsModal" id="viewdetail" tabindex="-1" role="dialog" aria-labelledby=orderdetailsModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="orderdetailsModalLabel">Details</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p class="mb-2">Raw Data: <span class="text-primary"><label for="" id="lblname" class="col-sm-8 col-form-label product_id"></label><input type="hidden" class="product_id" name="product_id" id="product_id"/></span></p>
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
                                <label for="horizontal-password-input" class="col-sm-3 col-form-label">Value</label>
                                <div class="col-sm-9">
                                    <input type="Number" class="form-control" id="horizontal-password-input" name="nresult" placeholder="Input number" step="0.001">
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

<script src="<?php echo base_url() ?>/assets/js/app.js"></script>
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