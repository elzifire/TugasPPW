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
        <button onclick="generatePDF()" class="btn btn-outline btn-primary">
          <i class="glyphicon glyphicon-print"></i> Cetak
        </button>
      </div>
    </div>
  </div>
</div>
<br>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
<script > function generatePDF() {
        
        // Choose the element id which you want to export.
        var element = document.getElementById('divToExport');
        var tanggalSekarang = new Date();
        element.style.width = '700px';
        element.style.height = '900px';
        var opt = {
            margin:       0.5,
            filename:     'myfile.pdf',
            image:        { type: 'jpeg', quality: 1 },
            html2canvas:  { scale: 1 },
            jsPDF:        { unit: 'in', format: 'letter', orientation: 'portrait',precision: '12' }
          };
        
        // choose the element and pass it to html2pdf() function and call the save() on it to save as pdf.
        html2pdf().set(opt).from(element).save();
      } </script>
