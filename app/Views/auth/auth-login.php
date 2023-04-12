<!doctype html>
<html lang="en">

<head>

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
                                        <h5 class="text-primary">Welcome Back !</h5>
                                        <p>Sign in to continue to FIMA KPI.</p>
                                    </div>
                                </div>
                                <div class="col-5 align-self-end">
                                    <img src="assets/images/profile-img.png" alt="" class="img-fluid">
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-0">
                            <div class="p-2">
                                <form class="form-horizontal" method="post" action="<?php echo base_url()?>\PageController\verify_login">

                                    <div class="mb-3">
                                        <label for="username" class="form-label">Email</label>
                                        <input type="text" class="form-control" id="username" placeholder="Enter email address" name="username">
                                    </div>
                                    <?php if (isset($validation) && $validation->hasError('username')) { ?>
                                        <div class="alert alert-danger" role="alert">
                                            <?= $validation->getError('username'); ?>
                                        </div>
                                    <?php } ?>

                                    <div class="mb-3">
                                        <label class="form-label">Password</label>
                                        <div class="input-group auth-pass-inputgroup">
                                            <input type="password" class="form-control" placeholder="Enter password" aria-label="Password" aria-describedby="password-addon" name="userpassword" id="userpassword" value="">
                                            <button class="btn btn-light " type="button" id="password-addon"><i class="mdi mdi-eye-outline"></i></button>
                                        </div>
                                    </div>
                                    <?php if (isset($validation) && $validation->hasError('userpassword')) { ?>
                                        <div class="alert alert-danger" role="alert">
                                            <?= $validation->getError('userpassword'); ?>
                                        </div>
                                    <?php } ?>

                                    <div class="form-check">
                                    </div>

                                    <div class="mt-3 d-grid">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit">Log In</button>
                                    </div>

                                    <div class="mt-4 text-center">
                                    </div>

                                    <div class="mt-4 text-center">
                                        <a href="auth-recoverpw" class="text-muted"><i class="mdi mdi-lock me-1"></i> Forgot your password?</a>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                    <div class="mt-5 text-center">

                        <div>
                            <p>Don't have an account ? <a href="auth-register" class="fw-medium text-primary"> Signup now </a> </p>
                            <p>© <script>
                                    document.write(new Date().getFullYear())
                                </script> FIMA. Crafted with <i class="mdi mdi-heart text-danger"></i> by IT FIMA</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- end account-pages -->

    <?= $this->include('partials/vendor-scripts') ?>

    <!-- App js -->
    <script src="assets/js/app.js"></script>
</body>

</html>