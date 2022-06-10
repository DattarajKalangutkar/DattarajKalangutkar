<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Snake</div>
    </a>
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="home.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Heading -->
    <div class="sidebar-heading">
        Pages
    </div>
    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link" href="approvedrescuerlist.php">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Approved Rescuer</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="user_list.php">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>User</span></a>
    </li>
    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="registeredlist.php">
            <i class="fas fa-fw fa-table"></i>
            <span>Request <?php echo (isset($data_rescuer['rows'])) ? '('.count($data_rescuer['rows']).')':'';?></span></a>
    </li>
    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
            aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder"></i>
            <span>Masters</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=snake">Snakes</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=color">Color</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=pattern">Pattern</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=symptoms">Symptoms</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=snaketype">Snake Type</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=hospital">Hospital</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=wildlife">Wild Life</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=headshape">Head Shape</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=questions">Question</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=firstaid">First Aid</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=statustrans">Transaction Status</a>
                <a class="collapse-item" href="<?php echo $site_url;?>master_list.php?type=events">Events</a>
            </div>
        </div>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
</ul>
<!-- End of Sidebar -->