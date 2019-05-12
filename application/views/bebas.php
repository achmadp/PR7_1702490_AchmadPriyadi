<!DOCTYPE html>
<html lang="en" dir="ltr">
<link rel="stylesheet" href="./bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
    <center>
      <body>
      <nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #3867d6 ;">
        <h1 align="center" >Data Kereta</h1>
      </nav>
      <hr>
      <div class="container">
        <?php
        $this->load->helper('url');
        ?>

        <div class="btn-group btn-group-toggle" data-toggle="buttons">
          <label class="btn btn-dark active">
            <a href="<?php echo site_url('Ccrud/index/'); ?>" >Left Join </a>
          </label>
          <label class="btn btn-dark">
            <a href="<?php echo site_url('Ccrud/right/'); ?>" >Right Join </a>
          </label>
          <label class="btn btn-dark">
            <a href="<?php echo site_url('Ccrud/inner/'); ?>" >Inner Join</a>
          </label>
        </div>
        <br>
    <table class="table table-hover">
      <br>
      <thead>
        <th>No</th>
        <th>Kode Kereta</th>
        <th>Nama Kereta</th>
        <th>Kode Kursi</th>


      </thead>
      <tbody>
        <tr>
          <?php $no = 1 ?>
          <?php foreach ($lokomotif as $key) {
            // code...
          ?>
          <td><?php echo $no++ ; ?></td>
          <td><?php echo $key->kd_kereta ; ?></td>
          <td><?php echo $key->nama ; ?></td>
          <td><?php echo $key->kd_kursi ; ?></td>


        </tr>
        <?php } ?>
      </tbody>
    </table>
    </center>
  </body>

  </div>
</html>
