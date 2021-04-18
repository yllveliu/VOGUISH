<?php
    if(isset($_GET['action']) && ($_GET['action'] == 'logout')) {
        session_destroy();
        header("Location: login.php");
    }
 
?>

<link rel="stylesheet" type='text/css' href='./includes/style.css'>

<header>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
   
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
    <img src="./logo.png" class="logo123" alt="#">
        <ul class="navbar-nav ml-auto">
            
        <a class="nav-link" href="index.php" >FUSTANE <span class="sr-only">(current)</span></a>
    <a class="nav-link" href="index2.php">AKSESORE<span class="sr-only">(current)</span></a>

    <?php if(isset($_SESSION['is_admin']) && $_SESSION['is_admin'] == 0): ?> 
        <li class="nav-item">
        <a class="nav-link"  href="profile.php">PROFILE</a>
        </li>
    <?php endif; ?>
    <?php if(isset($_SESSION['is_admin']) && $_SESSION['is_admin'] == 1): ?> 
        <li class="nav-item">
        <a class="nav-link"  href="admin-panel.php">ADMIN PANEL</a>
        </li>
    <?php endif; ?>
    <li class="nav-item">
    <a class="nav-link" href="cart.php">
        Cart (<?php echo isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0; ?>)
        </a>
        </li>
    <?php if(isset($_SESSION['username'])): ?> 
        <li class="nav-item">
        <a class="nav-link"  href="?action=logout">LOGOUT</a>
        </li>
    <?php endif; ?>
        </ul>
        
    </div>
  </div>
</nav>

