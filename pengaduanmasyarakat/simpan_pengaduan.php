<?php
require 'koneksi.php';
$tgl = date('Y/m/d');
$nik = $_POST['nik'];
$isi = $_POST['isi_laporan'];
$ft = $_FILES['foto']['name'];
$_file = $_FILES['foto']['tmp_name'];
$st = 'belum ditanggapi';

$sql = mysqli_query($conn, "insert into pengaduan(tgl_pengaduan,nik,isi_laporan,foto,status) values('$tgl','$nik','$isi','$ft','$st')");
move_uploaded_file($_file, "foto/" . $ft);
if ($sql) {
?>
    <script type="text/javascript">
        alert('Data berhasil disimpan, Terima kasih ');
        window.location = "masyarakat.php";
    </script>
<?php
}
?>
