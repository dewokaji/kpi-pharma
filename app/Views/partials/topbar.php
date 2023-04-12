<header id="page-topbar">
    <div class="navbar-header">
        <div class="d-flex" >
            <!-- LOGO -->
            <?php $session = \Config\Services::session(); ?>
                
            <div class="navbar-brand-box"style="background-color:#ffffff">
                <a href="/" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="<?= $session->get('compImgPath') ?>" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="<?= $session->get('compImgPath') ?>" alt="" height="17">
                    </span>
                </a>

                <a href="/" class="logo logo-light">
                    <span class="logo-sm">
                        <img src="<?= $session->get('compImgPath') ?>" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="<?= $session->get('compImgPath') ?>" alt="" height="70">
                    </span>
                </a>
            </div>

            <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect" id="vertical-menu-btn">
                <i class="fa fa-fw fa-bars"></i>
            </button>

        </div>

        <div class="d-flex">
            <div class="dropdown d-inline-block">
                
                <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="rounded-circle header-profile-user" src="assets/images/companies/img-1.png" alt="Header Avatar">
                    <span class="d-none d-xl-inline-block ms-1" key="t-henry"><?= $session->get('namaUser') ?></span>
                    <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>

                    
                </button>
                <div class="dropdown-menu dropdown-menu-end">
                    <!-- item-->
                    <!-- <a class="dropdown-item" href="#"><i class="bx bx-user font-size-16 align-middle me-1"></i> <span key="t-profile">Profile</span></a>
                    <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i> <span key="t-my-wallet">My Wallet</span></a>
                    <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i class="bx bx-wrench font-size-16 align-middle me-1"></i> <span key="t-settings">Settings</span></a>
                    <a class="dropdown-item" href="auth-lock-screen"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i> <span key="t-lock-screen">Lock screen</span></a> -->
                    <!-- <div class="dropdown-divider"></div> -->
                    <a class="dropdown-item text-danger" href="auth-login"><i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i> <span key="t-logout">Logout</span></a>
                </div>
            </div>

            <div class="dropdown d-inline-block">
                <button type="button" class="btn header-item noti-icon right-bar-toggle waves-effect">
                    <!-- <i class="bx bx-cog bx-spin"></i> -->
                </button>
            </div>

        </div>
    </div>
</header>