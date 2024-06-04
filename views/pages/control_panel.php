<?php
error_reporting(0);
include 'db_connection.php';

// Function to display donation data
function tampil_data_donasi($mysqli) {
    $sql = "SELECT * FROM donasi";
    $result = $mysqli->query($sql);
    while ($row = $result->fetch_object()) {
?>
        <tr>
            <td><?= $row->id; ?></td>
            <td>Rp. <?=number_format($row->jumlah_donasi); ?></td>
            <td><?= $row->tujuan_donasi; ?></td>
            <td><?= $row->donatur; ?></td>
            <td><?= $row->tanggal; ?></td>
            <td>
                <form action="" method="post">
                    <button type="button" class="btn btn-sm btn-warning text-light" data-toggle="modal" data-target="#modal-edit<?= $row->id; ?>">
                        <i class="fas fa-edit"></i>
                    </button>

                    <input type="hidden" name="id_donasi" value="<?= $row->id; ?>">
                    <button type="submit" name="hapus_donasi" class="btn btn-sm btn-danger" onclick="return confirm('Yakin ingin menghapus data ini?')">
                        <i class="fas fa-trash"></i>
                    </button>
                </form>
            </td>
        </tr>

        <div class="modal fade" id="modal-edit<?= $row->id; ?>">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Form Edit Donasi</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="" method="post">
                        <input type="hidden" name="id_donasi" value="<?= $row->id; ?>">
                        <div class="modal-body">
                            <label for="jumlah_donasi">Jumlah Donasi</label>
                            <input type="text" name="jumlah_donasi" id="jumlah_donasi" class="form-control" value="<?= $row->jumlah_donasi; ?>">
                            <label for="tujuan_donasi">Tujuan Donasi</label>
                            <input type="text" name="tujuan_donasi" id="tujuan_donasi" class="form-control" value="<?= $row->tujuan_donasi; ?>">
                            <label for="donatur">Donatur</label>
                            <input type="text" name="donatur" id="donatur" class="form-control" value="<?= $row->donatur; ?>">
                            <label for="tanggal">Tanggal</label>
                            <input type="date" name="tanggal" id="tanggal" class="form-control" value="<?= $row->tanggal; ?>">
                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                            <button type="submit" name="edit_donasi" class="btn btn-success">Simpan Perubahan</button>
                        </div>
                    </form>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
<?php
    }
}

// Handle form submission for editing donation data
if (isset($_POST['edit_donasi'])) {
    $id = $_POST['id_donasi'];
    $jumlah_donasi = $_POST['jumlah_donasi'];
    $tujuan_donasi = $_POST['tujuan_donasi'];
    $donatur = $_POST['donatur'];
    $tanggal = $_POST['tanggal'];

    $query = "UPDATE donasi SET jumlah_donasi = ?, tujuan_donasi = ?, donatur = ?, tanggal = ? WHERE id = ?";
    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("dsssi", $jumlah_donasi, $tujuan_donasi, $donatur, $tanggal, $id);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "<div class='alert alert-success'>Data donasi berhasil diperbarui.</div>";
    } else {
        echo "<div class='alert alert-danger'>Gagal memperbarui data donasi.</div>";
    }

    $stmt->close();
}

// Handle form submission for deleting donation data
if (isset($_POST['hapus_donasi'])) {
    $id = $_POST['id_donasi'];
    $query = "DELETE FROM donasi WHERE id = ?";
    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("i", $id);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "<div class='alert alert-success'>Data donasi berhasil dihapus.</div>";
    } else {
        echo "<div class='alert alert-danger'>Gagal menghapus data donasi.</div>";
    }

    $stmt->close();
}

// Handle form submission for adding new donation
if ($_SERVER['REQUEST_METHOD'] === 'POST' && !isset($_POST['edit_donasi']) && !isset($_POST['hapus_donasi']) && isset($_POST['jumlah_donasi'])) {
    $id = $_POST['id'];
    $jumlah_donasi = $_POST['jumlah_donasi'];
    $tujuan_donasi = $_POST['tujuan_donasi'];
    $donatur = $_POST['donatur'];
    $tanggal = $_POST['tanggal'];

    $query = "INSERT INTO donasi (id, jumlah_donasi, tujuan_donasi, donatur, tanggal) VALUES (?, ?, ?, ?, ?)";
    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("idsss", $id, $jumlah_donasi, $tujuan_donasi, $donatur, $tanggal);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "<div class='alert alert-success'>Data donasi berhasil ditambahkan.</div>";
    } else {
        echo "<div class='alert alert-danger'>Gagal menambahkan data donasi.</div>";
    }

    $stmt->close();
}

// Handle form submission for adding expenses
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['jumlah_pengeluaran'])) {
    $jumlah_pengeluaran = $_POST['jumlah_pengeluaran'];
    $tujuan_pengeluaran = $_POST['tujuan_pengeluaran'];
    $tanggal_pengeluaran = $_POST['tanggal_pengeluaran'];

    $query = "INSERT INTO pengeluaran (jumlah_pengeluaran, tujuan_pengeluaran, tanggal_pengeluaran) VALUES (?, ?, ?)";
    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("dss", $jumlah_pengeluaran, $tujuan_pengeluaran, $tanggal_pengeluaran);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "<div class='alert alert-success'>Pengeluaran berhasil ditambahkan.</div>";
    } else {
        echo "<div class='alert alert-danger'>Gagal menambahkan pengeluaran.</div>";
    }

    $stmt->close();
}

// Fetch donation and expense data
$total_donasi = 0;
$total_pengeluaran = 0;

// Calculate total donations
$query = "SELECT SUM(jumlah_donasi) AS total_donasi FROM donasi";
$result = $mysqli->query($query);
if ($result) {
    $row = $result->fetch_assoc();
    $total_donasi = $row['total_donasi'];
}

// Calculate total expenses
$query = "SELECT SUM(jumlah_pengeluaran) AS total_pengeluaran FROM pengeluaran";
$result = $mysqli->query($query);
if ($result) {
    $row = $result->fetch_assoc();
    $total_pengeluaran = $row['total_pengeluaran'];
}

// Calculate remaining balance
$sisa_donasi = $total_donasi - $total_pengeluaran;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Donasi</title>
    <!-- Include your preferred CSS framework, e.g., Bootstrap -->
    <link rel="stylesheet" href="path/to/bootstrap.min.css">
    <link rel="stylesheet" href="path/to/fontawesome.min.css">
</head>
<body>

<!-- Content Header (Page header) -->
<section class="content-header" style="background-image: url('dist/img/700px-City_of_Surabaya_Logo.svg.png'); background-size: 60px; background-position: center; background-repeat: no-repeat;">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0" style="color: black;"><i class="nav-icon fas fa-donate" style="color: black;"></i> Data Donasi</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#" style="color: black;">Home</a></li>
                    <li class="breadcrumb-item active" style="color: black;">Data Donasi</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Donation Data Section -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="d-flex justify-content-between mb-3">
                    <a href="" class="btn btn-success">
                        <i class="fas fa-print"></i> Print
                    </a>
                </div>
                <div class="card">
                <style>
                    .card-header.bg-info {
                        background-color: #40A578 !important;
                    }
                </style>
                    <div class="card-header bg-info">
                        <h3 class="card-title text-white">Daftar Data Donasi</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped" style="font-size: 14px;">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Jumlah Donasi</th>
                                        <th>Tujuan Donasi</th>
                                        <th>Donatur</th>
                                        <th>Tanggal</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php tampil_data_donasi($mysqli); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</section>

<!-- Form to input new donation data -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-info">
                        <h3 class="card-title text-white">Tambah Data Donasi</h3>
                    </div>
                    <div class="card-body">
                        <form action="" method="POST">
                            <div class="form-group">
                                <label for="id">ID:</label>
                                <input type="number" class="form-control" id="id" name="id" required>
                            </div>
                            <div class="form-group">
                                <label for="jumlah_donasi">Jumlah Donasi:</label>
                                <input type="number" step="0.01" class="form-control" id="jumlah_donasi" name="jumlah_donasi" required>
                            </div>
                            <div class="form-group">
                                <label for="tujuan_donasi">Tujuan Donasi:</label>
                                <input type="text" class="form-control" id="tujuan_donasi" name="tujuan_donasi" required>
                            </div>
                            <div class="form-group">
                                <label for="donatur">Donatur:</label>
                                <input type="text" class="form-control" id="donatur" name="donatur" required>
                            </div>
                            <div class="form-group">
                                <label for="tanggal">Tanggal:</label>
                                <input type="date" class="form-control" id="tanggal" name="tanggal" required>
                            </div>
                            <button type="submit" class="btn btn-success">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0" style="color: black;"><i class="nav-icon fas fa-receipt" style="color: black;"></i> Data Transaksional</h1>
            </div>
            <div class="col-sm-6">
    
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Display total donations, expenses, and remaining balance -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-info">
                        <h3 class="card-title text-white">Data Donasi</h3>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <div>
                                <h5 class="mb-0">Total Donasi</h5>
                                <p class="mb-0">Rp. <?= number_format($total_donasi); ?></p>
                            </div>
                            <div>
                                <i class="fas fa-hand-holding-usd fa-3x text-success"></i>
                            </div>
                        </div>
                        <hr>
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <div>
                                <h5 class="mb-0">Total Pengeluaran</h5>
                                <p class="mb-0">Rp. <?= number_format($total_pengeluaran); ?></p>
                            </div>
                            <div>
                                <i class="fas fa-shopping-cart fa-3x text-danger"></i>
                            </div>
                        </div>
                        <hr>
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h5 class="mb-0">Sisa Donasi</h5>
                                <p class="mb-0">Rp. <?= number_format($sisa_donasi); ?></p>
                            </div>
                            <div>
                                <i class="fas fa-wallet fa-3x text-info"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Form to input new expense data -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-info">
                        <h3 class="card-title text-white">Tambah Data Pengeluaran</h3>
                    </div>
                    <div class="card-body">
                        <form action="" method="POST">
                            <div class="form-group">
                                <label for="jumlah_pengeluaran">Jumlah Pengeluaran:</label>
                                <input type="number" step="0.01" class="form-control" id="jumlah_pengeluaran" name="jumlah_pengeluaran" required>
                            </div>
                            <div class="form-group">
                                <label for="tujuan_pengeluaran">Tujuan Pengeluaran:</label>
                                <input type="text" class="form-control" id="tujuan_pengeluaran" name="tujuan_pengeluaran" required>
                            </div>
                            <div class="form-group">
                                <label for="tanggal_pengeluaran">Tanggal Pengeluaran:</label>
                                <input type="date" class="form-control" id="tanggal_pengeluaran" name="tanggal_pengeluaran" required>
                            </div>
                            <button type="submit" class="btn btn-success">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php
error_reporting(0);
include 'db_connection.php';
function tampil_data_pengeluaran($mysqli) {
    $sql = "SELECT * FROM pengeluaran";
    $result = $mysqli->query($sql);
    while ($row = $result->fetch_object()) {
        ?>
        <tr>
            <td><?= $row->id; ?></td>
            <td>Rp. <?=number_format($row->jumlah_pengeluaran); ?></td>
            <td><?= $row->tujuan_pengeluaran; ?></td>
            <td><?= $row->tanggal_pengeluaran; ?></td>
        </tr>
        <?php
    }
}
?>
<!-- Donation Data Section -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                
                <div class="card">
                <style>
                    .card-header.bg-info {
                        background-color: #40A578 !important;
                    }
                </style>
                    <div class="card-header bg-info">
                        <h3 class="card-title text-white">Daftar Data Pengeluaran</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped" style="font-size: 14px;">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Jumlah Pengeluaran</th>
                                        <th>Tujuan Pengeluaran</th>
                                        <th>Tanggal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php tampil_data_pengeluaran($mysqli); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</section>




<!-- Include your preferred JavaScript framework, e.g., jQuery, Bootstrap JS -->
<script src="path/to/jquery.min.js"></script>
<script src="path/to/bootstrap.bundle.min.js"></script>
<script src="path/to/fontawesome.min.js"></script>
</body>
</html>

<?php $mysqli->close(); ?>
