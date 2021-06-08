<?php
if (isset($_GET['url']))
{
  $url=$_GET['url'];

  switch($url)
  {
    case 'verifikasi_pengaduan';
    include 'verifikasi_pengaduan.php';
    break;

    case 'detail_pengaduan';
    include 'detail_pengaduan.php';
    break;

    case 'tanggapan';
    include 'tanggapan.php';
    break;

    case 'lihat_petugas';
    include 'lihat_petugas.php';
    break;

    case 'tambah_petugas';
    include 'tambah_petugas.php';
    break;

    case 'edit_petugas';
    include 'edit_petugas.php';
    break;

    case 'preview_petugas';
    include 'preview_petugas.php';
    break;

    case 'lihat_masyarakat';
    include 'lihat_masyarakat.php';
    break;

    case 'preview_masyarakat';
    include 'preview_masyarakat.php';
    break;

    case 'preview_laporan';
    include 'preview_laporan.php';
    break;

    case 'lihat_laporan';
    include 'lihat_laporan.php';
    break;
  }
}
else
{
   ?>
   Selamat Datang di Aplikasi Pengaduan Masyarakat untuk mempermudah melaporkan pelanggaran dan pengaduan
   masyarakat <br><br>
   Selamat datang, <h2><b> <?php echo $_SESSION['nama'];

   require '../koneksi.php';
   $sql=mysqli_query($conn,"select * from pengaduan where status='proses'");
   if ($cek=mysqli_num_rows($sql))
   {
   ?>
<br>
<br>
   <div class="col-xl-7 col-md-6 mb-4">
     <div class="card border-left-primary shadow h-100 py-2">
       <div class="card-body">
         <div class="row no-gutters align-items-center">
           <div class="col mr-2" >
             <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Laporan Pengaduan : </div>
             <div class="h5 mb-0 font-weight-bold text-gray-800">Ada <?php echo $cek; ?> laporan dari masyarakat </div>
           </div>
           <div class="col-auto">
             <i class="fas fa-cloud-download-alt fa-4x text-gray-300"></i>
             <span class="badge badge-danger badge-counter"><?php echo $cek; ?></span>
           </div>
         </div>
       </div>
     </div>
   </div>

   <?php
} }
?>
