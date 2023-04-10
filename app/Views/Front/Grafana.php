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
                    <div class="col xl-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div><h2> Generate Report </h2></div>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-sm btn-rounded" data-bs-toggle="modal" data-bs-target=".orderdetailsModal">
                                    View details
                                </button>

                            </div>
                        </div>
                    </div>
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
                                <form method="post" action="<?php echo base_url()?>/Front/generate_report">
                                <div class="row mb-4">
                                        <label for="form-mesin" class="col-sm-3 col-form-label">Nama Mesin</label>
                                        <div class="col-sm-9">
                                            <select id="form-mesin" class="form-select">
                                                <option selected>Choose...</option>
                                                <option value="Nikka Densok">Nikka Densok</option>
                                                <option value="Overwrap">Overwrap</option>
                                                <option value="Plumat">Plumat</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label for="form-line" class="col-sm-3 col-form-label">Line</label>
                                        <div class="col-sm-9">
                                            <select id="form-line" class="form-select">
                                                <option selected>Choose...</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="4">4</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label for="date-start" class="col-sm-3 col-form-label">Date Start</label>
                                        <div class="col-sm-9">
                                            <input type="datetime-local" class="form-control" id="date-start" placeholder="Input number">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label for="date-end" class="col-sm-3 col-form-label">Date End</label>
                                        <div class="col-sm-9">
                                            <input type="datetime-local" class="form-control" id="date-end" placeholder="Input number">
                                        </div>
                                    </div>
                                    <div class="row justify-content-end">
                                        <div class="col-sm-9">
                                            <div>
                                                <!-- <a target="_blank" href="http://172.25.161.199:1880/testing?&user=Suwandi&line=1&machine=Pl%C3%BCmat&datestart=2022-04-13%2009:58:32&dateend=2022-04-13%2009:58:41&id=198231"><button type="submit" class="btn btn-primary w-md">Generate Report</button></a> -->
                                                <button type="submit" class="btn btn-primary w-md">Generate Report</button>
                                                <a target="_blank" href="http://172.25.162.198:1880/testing/198231.pdf" class="button">Download Report</a>
                                            </div>
                                        </div>
                                    </div>

                                </form>

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