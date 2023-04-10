<!doctype html>
<html lang="en">

<head>

    <?= $title_meta ?>

    <?= $this->include('partials/head-css') ?>

</head>

<body>

    <div class="account-pages my-5 pt-sm-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6 col-xl-5">
                    <div class="card overflow-hidden">
                        <div class="bg-primary bg-soft">
                            <div class="row">
                                <div class="col-7">
                                    <div class="text-primary p-4">
                                        <h5 class="text-primary">Free Register</h5>
                                        <p>Get your free FIMA account now.</p>
                                    </div>
                                </div>
                                <div class="col-5 align-self-end">
                                    <img src="assets/images/profile-img.png" alt="" class="img-fluid">
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-0">
                            <div>
                                <!-- <a href="/">
                                    <div class="avatar-md profile-user-wid mb-4">
                                        <span class="avatar-title rounded-circle bg-light">
                                            <img src="assets/images/logo.svg" alt="" class="rounded-circle" height="34">
                                        </span>
                                    </div>
                                </a> -->
                            </div>
                            <div class="p-2">
                                <form class="form-horizontal" method="post" action="<?php echo base_url()?>\PageController\verify_register">
            
                                    <div class="mb-3">
                                        <label for="useremail" class="form-label">Email</label>
                                        <input type="email" class="form-control" id="useremail" required placeholder="Enter email" name="useremail">
                                    </div>
                                    <?php if(isset($validation) && $validation->hasError('useremail')){ ?>
                                        <div class="alert alert-danger" role="alert">
                                            <?= $validation->getError('useremail'); ?>
                                        </div>
                                    <?php } ?>
                                        
                                    <div class="mb-3">
                                        <label for="username" class="form-label">Username</label>
                                        <input type="text" class="form-control" id="username" required placeholder="Enter username" name="username" value="">
                                    </div>
                                    <?php if(isset($validation) && $validation->hasError('username')){ ?>
                                        <div class="alert alert-danger" role="alert">
                                            <?= $validation->getError('username'); ?>
                                        </div>
                                    <?php } ?>

                                    <div class="mb-3">
                                        <label for="horizontal-email-input" class="col-sm-3 col-form-label">Departemen</label>
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
                                            <option value="MSTD">MSTD</option>
                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="userpassword" class="form-label">Password</label>
                                        <input type="password" class="form-control" id="userpassword" required placeholder="Enter password" name="userpassword" value="">
                                    </div>
                                    <?php if(isset($validation) && $validation->hasError('userpassword')){ ?>
                                        <div class="alert alert-danger" role="alert">
                                            <?= $validation->getError('userpassword'); ?>
                                        </div>
                                    <?php } ?>

                                    <div class="mb-3">
                                        <label for="userpassword" class="form-label">Confirm Password</label>
                                        <input type="password" class="form-control" id="userpassword_confirm" required placeholder="Re-Enter password" name="userpassword_confirm" value="">
                                    </div>
                                       
                                    <?php if(isset($validation) && $validation->hasError('userpassword_confirm')){ ?>
                                        <div class="alert alert-danger" role="alert">
                                            <?= $validation->getError('userpassword_confirm'); ?>
                                        </div>
                                    <?php } ?>

                                    <div class="mt-4 d-grid">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit">Register</button>
                                    </div>

                                    <div class="mt-4 text-center">
                                        <!-- <p class="mb-0">By registering you agree to the Skote <a href="#" class="text-primary">Terms of Use</a></p> -->
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                    <div class="mt-5 text-center">

                        <div>
                            <p>Already have an account ? <a href="auth-login" class="fw-medium text-primary"> Login</a> </p>
                            <p>© <script>
                                    document.write(new Date().getFullYear())
                                </script> FIMA. Crafted with <i class="mdi mdi-heart text-danger"></i> by IT FIMA</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <?= $this->include('partials/vendor-scripts') ?>

    <!-- validation init -->
    <script src="assets/js/pages/validation.init.js"></script>

    <!-- App js -->
    <script src="assets/js/app.js"></script>

</body>

</html>
