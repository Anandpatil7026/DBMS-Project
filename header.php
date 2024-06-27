<header id="header" class="header d-flex align-items-center">
  <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

    <a href="index.php" class="logo d-flex align-items-center">
      <!-- Uncomment the line below if you also wish to use an image logo -->
      <!-- <img src="assets/img/logo.png" alt=""> -->
      <h1>UpConstruction<span>.</span></h1>
    </a>

    <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
    <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
    <nav id="navbar" class="navbar">
      <ul>
      <li><a href="#" class="active">Home</a></li>
      <?php
        include 'config.php';
        $admin = new Admin();
        if (isset($_SESSION['c_id'])||isset($_SESSION['u_id'])||isset($_SESSION['e_id'])||isset($_SESSION['w_id'])) {
          
        ?>
       
        <li><a href="#">About</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="controller/logout.php">Logout</a></li>
        <?php }else{ ?>
       
        <li><a href="login.php">Login</a></li>|

        <li class="dropdown"><a href="#"><span>Registration</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
          <ul>
            <li><a href="constructorreg.php">constructor</a></li>

            <li><a href="enggreg.php">Engineer</a></li>
            <li><a href="workerreg.php">Worker</a></li>
            <li><a href="userregister.php">User</a></li>
          </ul>
        </li>
        <?php } ?>
       
      </ul>
    </nav><!-- .navbar -->

  </div>
</header>