<!doctype html>
<html lang="en">

<head>
  <?php $this->load->view('includes/header'); ?>
  <title>Add New Post</title>
</head>

<body>
    <?php $this->load->view('includes/header-sider'); ?>

        <div class="col-md-4 my-2 mx-5 border border-5 justify-content-center">            
          
          <h2 class="text-center mb-3">Ajouter Versement</h2>  
          
          <div class="d-flex justify-content-between ">
            <h4></h4>
            <a class="btn btn-warning" href="<?php echo base_url('virement'); ?>"> <i class="fas fa-angle-left"></i> Retour</a>
          </div>
  
          <form method="post" action="<?php echo base_url('virement/store'); ?>">
  
            <div class="form-group">
              <label>Client</label>
              <select  class="form-control"  name="id_client" title="Client">
                <?php 
                  $result = $this->db->get('client')->result(); 
                  foreach ($result as $key => $value) {  ?>
                    <option value="<?= $value->id_client ?>"><?= $value->nom_client ?></option>                
                <?php 
                  }                    
                ?>
              </select>
            </div>
  
            <div class="form-group">
              <label>Montant</label>
              <input class="form-control" name="montant">
            </div>
  
            <div class="form-group">
              <button type="submit" class="btn btn-success"> <i class="fas fa-check"></i> Ajouter </button>
            </div>
  
          </form>
  
  
        </div>
    </div>
  </div>



  <?php $this->load->view('includes/footer'); ?>

</body>

</html>