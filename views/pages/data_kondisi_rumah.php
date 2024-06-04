<?php include 'app/post/post_data_kondisi_rumah.php'; ?>
<!-- Content Header (Page header) -->
<section class="content-header" style="background-image: url('dist/img/700px-City_of_Surabaya_Logo.svg.png'); background-size: 60px; background-position: center; background-repeat: no-repeat;">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h3><i class="nav-icon fas fa-door-closed"></i> Data Kondisi Rumah</h3>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item active">Data Kondisi Rumah</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

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
                <a href="input_data_kondisi" class="btn btn-primary">
                    <i class="fas fa-plus-square"></i> Data Kondisi Rumah
                </a>
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
                        <h3 class="card-title">Daftar Data Kondisi Rumah</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped" style="font-size: 14px;">
                                <thead>
                                    <tr>
                                        <th>No.KK</th>
                                        <th>NIK</th>
                                        <th>Nama</th>
                                        <th>Luas Lantai</th>
                                        <th>Jenis Lantai</th>
                                        <th>Jenis Dinding</th>
                                        <th>Fasilitas MCK</th>
                                        <th>Sumber Penerangan</th>
                                        <th>Sumber Air Minum</th>
                                        <th>Bahan Bakar Memasak</th>
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
            </div>
        </div>
</section>