 <?php
 error_reporting(0);
include 'configuration/config_connect.php';
        $queryback="SELECT * FROM backset";
		$resultback=mysqli_query($conn,$queryback);
		$rowback=mysqli_fetch_assoc($resultback);
		$footer=$rowback['footer'];


 ?>
 <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 1.1.0.1
                </div>
                <strong>Copyright © 2024 eLaundry - Laundry Manajemen Sistem.</strong> All rights
                reserved. <?php echo $footer;?>
				</div>
            </footer>
