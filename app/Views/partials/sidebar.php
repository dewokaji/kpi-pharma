<!-- ========== Left Sidebar Start ========== -->
<div class="vertical-menu">

    <div data-simplebar class="h-100">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <!-- Left Menu Start -->
            <ul class="metismenu list-unstyled" id="side-menu">
                <li class="menu-title" key="t-menu"><?= lang('Files.Menu') ?></li>

                <!--<li>
                    <a href="PharmaDash" class="waves-effect">
                        <i class="bx bx-chart"></i><span class="badge rounded-pill bg-info float-end"></span>
                        <span key="a-dashboards"><?= lang('Pharma Dashboards') ?></span>
                    </a>
                                    
                </li>-->

                <li>
                    <a href="javascript: void(0);" class="waves-effect">
                        <i class="bx bx-home-circle"></i><span class="badge rounded-pill bg-info float-end"></span>
                        <span key="t-dashboards"><?= lang('Site Dashboards') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="Dashboard" key=""><?= lang('Table') ?></a></li>
                        <li><a href="<?php echo base_url() ?>" key="t-default"><?= lang('Graph') ?></a></li>
                    </ul>
                    <!--<ul class="sub-menu" aria-expanded="false">
                        <li><a href="Grafana" key="t-default"><?= lang('Grafana Dashboard') ?></a></li>
                    </ul> -->                  
                </li>

                <li>
                    <a href="javascript: void(0);" class="waves-effect">
                        <i class="bx bx-book"></i><span class="badge rounded-pill bg-info float-end"></span>
                        <span key="t-Master">Transaction</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="Master-Raw-Data" key=""><?= lang('Master Raw Data') ?></a></li>
                        <li><a href="View-Input" key=""><?= lang('BO Performance') ?></a></li>
                        <li><a href="Capacity-Util" key=""><?= lang('Capacity Utilization') ?></a></li>
                        <li><a href="Production-Output" key="d"><?= lang('Production Output') ?></a></li>
                    </ul>
                    
                </li>

                <li>
                    <a href="javascript: void(0);" class="waves-effect">
                        <i class="bx bx-book"></i><span class="badge rounded-pill bg-info float-end"></span>
                        <span key="t-view"><?= lang('View Download To Excel') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="KPI-To-Target" key=""><?= lang('KPI To Target') ?></a></li>
                        <!-- <li><a href="Dashboard" key=""><?= lang('Dashboard Download') ?></a></li> -->
                    </ul>
                </li>
                
            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->