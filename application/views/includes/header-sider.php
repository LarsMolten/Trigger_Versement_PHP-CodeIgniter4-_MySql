    <!-- Header -->
    <header>
        <!-- Vous pouvez ajouter ici le contenu de votre en-tête -->
        <nav class="navbar navbar-expand-lg navbar-primary bg-primary">
          <div class="container-fluid">
              <!-- Placer le bouton à gauche -->
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                
                  <span class="navbar-toggler-icon"></span>
              </button>
              <!-- Logo ou titre -->
              <a class="navbar-brand" style="color:bisque" href="#">Rôle : <?= $this->session->userdata['role']; ?></a>
              <!-- Titre du projet -->
              <h5 style="color:bisque; margin-left: 20%;"></h5> 
              <li class="list-group-item bg-dark" ><a style="color:bisque" href="<?php echo base_url('client'); ?>">Client</a></li>
              <li class="list-group-item bg-dark"><a style="color:bisque" href="<?php echo base_url('virement'); ?>">Versement</a></li>
              <?php 
                  if ($this->session->userdata['role'] == 'admin') { ?>
                    <li class="list-group-item bg-dark"><a style="color:bisque" href="<?php echo base_url('audit'); ?>">Audit</a></li>                
                <?php 
                  }
                ?>
              <!-- Bouton à droite -->
              <button ><?= $this->session->userdata['email']; ?></button>
              <li class="list-group-item bg-dark"><a style="color:bisque" href="<?php echo base_url('login/logout'); ?>">Déconnexion</a></li>
          </div>
      </nav>
    </header>

    <div class="container-fluid">

      <div class="row">

          <!-- Sidebar -->
       <!--   <div class="col-md-0 bg-dark">
            <div class="sidebar">
              <ul class="list-group list-group-flush">
                <li class="list-group-item bg-dark" ><a href="<?php echo base_url('client'); ?>">Client</a></li>
                <li class="list-group-item bg-dark"><a href="<?php echo base_url('virement'); ?>">Virement</a></li>
                <?php 
                  if ($this->session->userdata['role'] == 'admin') { ?>
                    <li class="list-group-item bg-dark"><a href="<?php echo base_url('audit'); ?>">Audit</a></li>                
                <?php 
                  }
                ?>
                <li class="list-group-item bg-dark"><a href="<?php echo base_url('login/logout'); ?>">Déconnexion</a></li> -->
              </ul>
            </div>
          </div>
          <!-- End Sidebar -->