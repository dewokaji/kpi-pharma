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
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">Input Data Master</h4>
                                <form method="post" action="<?php echo base_url()?>/Master/do_input_raw_data">
                                    <div class="row mb-4">
                                        <label for="tgl-berlaku" class="col-sm-3 col-form-label">Tanggal Berlaku</label>
                                        <div class="col-sm-9">
                                            <input type="date" class="form-control" id="tgl-berlaku" name="tgl_berlaku" >
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Departemen</label>
                                        <div class="col-sm-9">
                                            <select id="formrow-inputState" class="form-select" name="dept">
                                                <option value="" selected>Choose...</option>
                                                <option value="TS">TS</option>
                                                <option value="FA">FA</option>
                                                <option value="LOG">Logistik</option>
                                                <option value="PROD">Produksi</option>
                                                <option value="HRD">HRD</option>
                                                <option value="GA">GA</option>
                                                <option value="QC">QC</option>
                                                <option value="QA">QA</option>
                                                <option value="QS">QS</option>
                                                <option value="HSE">HSE</option>
                                                <option value="MSTD">MSTD</option>                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label for="horizontal-password-input" class="col-sm-3 col-form-label">Nama Raw Data</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="horizontal-password-input" name="name" placeholder="Raw Data">
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
                            <!-- end card body -->
                        </div>
                        <!-- end card -->
                    </div>
                    <!-- end col -->

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