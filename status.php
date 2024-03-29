<?php 
include "configuration/config_etc.php" ;
include "configuration/config_include.php" ;
include "configuration/config_connect.php" ;
?>
<html>
<title>Informasi Nota</title>
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="page/css/util.css">
  <link rel="stylesheet" type="text/css" href="page/css/main.css">
<!--===============================================================================================-->
<?php head();

?>
<body class="hold-transition login-page">
<?php 
//--------------------------------------------------------------------
if(isset($_GET['txtnota']))
{
 $fnota = $_GET['txtnota'];
  }

 $my9Sql = "SELECT COUNT(*) tot_hadir FROM bayar WHERE nota='$fnota'";
		$my9Qry = mysqli_query($conn, $my9Sql)  or die ("Query 2 salah : ".mysqli_error());
		$my9Data= mysqli_fetch_array($my9Qry);  
		$exist = $my9Data['tot_hadir'] ;

if ($exist==0){
	header("Location: cek-ulang");
} else {		

$userSql = "SELECT * FROM bayar WHERE nota='$fnota'";
$userQry = mysqli_query($conn, $userSql)  or die ("Query penjualan salah : ".mysqli_error());

$userRow = mysqli_fetch_array($userQry);

$tanggal     = $userRow['tglmasuk'];
$jam         = $userRow['jammasuk'];
$tanggaldeadline = $userRow['tgldeadline'];
$jamdeadline     = $userRow['jamdeadline'];
$total           = $userRow['total'];
$namakasir       = $userRow['kasir'];
$catatan        = $userRow['catatan'];
$statusa       = $userRow['status'];

if ($statusa=="selesai"){
  $status="Siap Diambil";
  $color="33C4FF";
}else if($statusa=="proses") {
  $status="Masih Dikerjakan";
  $color="FF7A33";
}else if($statusa=="lunas") {
  $status="Telah Diambil";
  $color="4BB543";
} else if($statusa=="Diterima") {
  $status="Diterima";
  $color="086FF1";
} 

$karSql = "SELECT nama FROM pelanggan INNER JOIN bayar ON pelanggan.kode=bayar.pelanggan WHERE bayar.nota='$fnota'";

$karQry = mysqli_query($conn, $karSql)  or die ("Query penjualan salah : ".mysqli_error());
$karRow = mysqli_fetch_array($karQry);

$nmpelanggan = $karRow['nama'];


}
?>

<head>
  <link rel="icon" 
      type="image/png/icon" 
      href="page/images/icons/favicon.ico" />
</head>


  <div class="container-login100">
	<div id="loginbox">

	<?php  // error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
	?>

<div class="wrap-login100 p-l-25 p-r-25 p-t-20">
  <span class="login100-form-title p-b-5">eLaundry</span>
  <hr style="border-color: #086e26">
  <!-- /.login-logo -->

    <form >
      <div class="form-group has-feedback">
      	<label>Nomor Nota :</label>
        <input type="text" style="text-align:center;" class="form-control" value="<?php echo $fnota; ?>" readonly>
        <span class=" form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
      	<label>Nama :</label>
        <input type="text" style="text-align:center;" class="form-control" value="<?php echo $nmpelanggan; ?>" readonly>
        <span class=" form-control-feedback"></span>
      </div>


      <div class="form-group has-feedback">
      	<label>Status :</label>
        <input style="font-size:16px;background-color:<?php echo $color; ?>;color:white;text-align:center" type="text"  class="form-control" value="<?php echo $status; ?>" readonly>
        <span class=" form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
      	<label>Tanggal Masuk :</label>
        <input type="text" style="text-align:center;" class="form-control" value="<?php echo $tanggal.' / '.date("H:i", strtotime($jam)); ?>" readonly>
        <span class=" form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
      	<label>Perkiraan Selesai :</label>
        <input type="text" style="text-align:center;" class="form-control" value="<?php echo $tanggaldeadline.' / '.date("H:i", strtotime($jamdeadline)); ?>" readonly>
        <span class=" form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
      	<label>Biaya Jasa (Rupiah):</label>
        <input type="text" style="font-size:16px;color:black;text-align:center" class="form-control" value="<?php echo $total; ?>" readonly>
        <span class=" form-control-feedback"></span>
      </div>
      
      
      <div class="row">
        <!-- /.col -->
        
        <!-- /.col -->
      </div>
    </form>

    <!-- /.social-auth-links -->
	  <p class="login-box-msg">Dikembangkan oleh eLaundry.com <br> Laundry Management System</p>

  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
        </div>


         </div>
    </div>





               <script src="dist/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
        <script src="dist/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="dist/plugins/morris/morris.min.js"></script>
        <script src="dist/plugins/sparkline/jquery.sparkline.min.js"></script>
        <script src="dist/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="dist/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="dist/plugins/knob/jquery.knob.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
        <script src="dist/plugins/daterangepicker/daterangepicker.js"></script>
        <script src="dist/plugins/datepicker/bootstrap-datepicker.js"></script>
        <script src="dist/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <script src="dist/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <script src="dist/plugins/fastclick/fastclick.js"></script>
        <script src="dist/js/app.min.js"></script>
        <script src="dist/js/pages/dashboard.js"></script>
        <script src="dist/js/demo.js"></script>
		<script src="dist/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="dist/plugins/datatables/dataTables.bootstrap.min.js"></script>
		<script src="dist/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<script src="dist/plugins/fastclick/fastclick.js"></script>
    </body>

</html>
