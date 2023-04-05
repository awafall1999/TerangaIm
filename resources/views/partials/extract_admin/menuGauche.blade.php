<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

     <!--  Dashboard  -->
      <li class="nav-item">
        <a class="nav-link " href={{ asset("templates/templateAdmin/index.html")}}>
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li>

       <!-- profil -->
       <li class="nav-item">
        <a class="nav-link collapsed" href={{ asset("templates/templateAdmin/users-profile.html")}}>
          <i class="bi bi-person"></i>
          <span>Profile</span>
        </a>
      </li>
      
<!--  Annonces -->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Annonces</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href={{ asset("templates/templateAdmin/components-alerts.html")}}>
              <i class="bi bi-circle"></i><span>Annonces publiés</span>
            </a>
          </li>
          <li>
            <a href={{ asset("templates/templateAdmin/components-accordion.html")}}>
              <i class="bi bi-circle"></i><span>Annonces non publiés</span>
            </a>
          </li>
          <li>
            <a href={{ asset("templates/templateAdmin/components-badges.html")}}>
              <i class="bi bi-circle"></i><span>Corbeille</span>
            </a>
         
         
          </li>
        </ul>
      </li>
  <!--  Utilisateurs -->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Utilisateurs</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href={{ asset("templates/templateAdmin/forms-elements.html")}}>
              <i class="bi bi-circle"></i><span>Compte</span>
            </a>
          </li>
          <li>
            <a href={{ asset("templates/templateAdmin/forms-layouts.html")}}>
              <i class="bi bi-circle"></i><span>Compte Bloqué</span>
            </a>
          </li>

        </ul>
      </li>

      <!--  Catégorie -->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span> Catégorie</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href={{ asset("templates/templateAdmin/tables-general.html")}}>
              <i class="bi bi-circle"></i><span> Catégorie</span>
            </a>
          </li>
          <li>
            <a href={{ asset("templates/templateAdmin/tables-data.html")}}>
              <i class="bi bi-circle"></i><span>Sous Catégorie</span>
            </a>
          </li>
        </ul>
      </li><!-- End Tables Nav -->
      <!-- Notes -->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-bar-chart"></i><span>Notes</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href={{ asset("templates/templateAdmin/charts-chartjs.html")}}>
              <i class="bi bi-circle"></i><span>Notes</span>
            </a>
          </li>
        
        </ul>
      </li>

   

      <!-- <li class="nav-heading">Pages</li> -->
      

      <!-- contact -->
      <li class="nav-item">
        <a class="nav-link collapsed" href={{ asset("templates/templateAdmin/pages-contact.html")}}>
          <i class="bi bi-envelope"></i>
          <span>Contact</span>
        </a>
      </li>

       <!-- Déconnexion -->
      <li class="nav-item">
        <a class="nav-link collapsed" href={{ asset("templates/templateAdmin/pages-register.html")}}>
          <i class="bi bi-card-list"></i>
          <span>Déconnexion</span>
        </a>
      </li>

    
    </ul>

  </aside>
