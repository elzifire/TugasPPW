<div class="panel panel-default">
  <div class="panel-body">
    <div class="row">
      <?php if ($_SESSION['user']['status_user'] != 'RW'): ?>
      <div class="col-md-2">
        <a href="create.php" class="btn btn-success">
          <i class="fa fa-plus-square"></i> Tambah
        </a>
      </div>
      <?php endif; ?>
      <div class="col-md-2">
        <a href="index.php" class="btn btn-info">
          <i class="fa fa-eye"></i> Lihat Data
        </a>
      </div>
      <div class="col-md-2">
        <button type="button" href="../warga/index.php" class="btn btn-primary">
          <i class="fa fa-refresh"></i> Refresh
        </button>
      </div>
      <div class="col-md-2">
        <button onclick="exportToPDF()" class="btn btn-outline btn-primary">
          <i class="glyphicon glyphicon-print"></i> Cetak
        </button>
      </div>
    </div>
  </div>
</div>
<br>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.10/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.10/vfs_fonts.js"></script>