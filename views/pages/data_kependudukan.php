<?php error_reporting(0); include 'app/post/post_data_kependudukan.php';  ?>

<!-- Content Header (Page header) -->
<section class="content-header" style="background-image: url('dist/img/700px-City_of_Surabaya_Logo.svg.png'); background-size: 60px; background-position: center; background-repeat: no-repeat;">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark"><i class="nav-icon fas fa-users"></i> Data Kependudukan</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Data Kependudukan</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
            <style>
                    .btn-primary {
                        background-color: #006769; 
                        border-color: #006769; 
                    }

                    .btn-primary:hover {
                        background-color: #004d00; 
                        border-color: #004d00; 
                    }

                    .btn-primary i {
                        color: white; 
                    }
                </style>
                <div class="d-flex justify-content-between mb-3">
                    <a href="input_data_kependudukan" class="btn btn-primary">
                        <i class="fas fa-plus-square"></i> Tambah Data Kependudukan
                    </a>
                    <a href="" class="btn btn-success">
                        <i class="fas fa-print"></i> Print
                    </a>
                </div>
                <div class="card mt-3">
                <style>
                        /* Table header */
                        .table thead th {
                            background-color: #40A578; 
                            color: white; 
                        }

                        /* Table body */
                        .table tbody td {
                            background-color: #f4f4f4; 
                        }

                        /* Hover effect */
                        .table tbody tr:hover {
                            background-color: #e9e9e9; 
                        }
                    </style>

                    <div class="card-header">
                        <h3 class="card-title">Daftar Data Kependudukan</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped" style="font-size: 14px;">
                                <thead>
                                    <tr>
                                    <th>No KK</th>
                                        <th>NIK</th>
                                        <th>Nama</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Hubungan Keluarga</th>
                                        <th>Tempat Tanggal Lahir</th>
                                        <th>Pekerjaan Utama</th>
                                        <th>Penghasilan per Bulan</th>
                                        <th>Dusun</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php tampil_data($mysqli); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</section>
<!-- /.content -->
