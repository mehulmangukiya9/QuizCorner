<%@page import="com.mehul.quizcorner.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Student Dashboard</title>
  
  <!------ Custom files for the Quiz Module 
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>---------->

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <!-- Custom styles for Quiz Module-->
  <link href="css/quiz-module-custom-css.css" rel="stylesheet">

</head>
<body id="page-top">

<%
	response.setHeader("cache-Control", "no-cache,no-store,must-revalidate");
		  
		  response.setHeader("pragma", "no-cache");
		  
		  if(session.getAttribute("user") == null)
		  {
			  response.sendRedirect("home.jsp");
		  }
%>

 <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-graduation-cap"></i>
        </div>
        <div class="sidebar-brand-text mx-2">Quiz Corner<sup></sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="student_dashboard.jsp">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">
	  
	  <li class="nav-item active">
        <a class="nav-link" href="#">
          <i class="fas fa-poll"></i>
          <span>Past Results</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Settings</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#" data-toggle="modal" data-target="#modalMyProfile">Update Profile</a>
            <a class="collapse-item" href="#">About Us</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->
	
	
	

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <!--<span class="mr-2 d-none d-lg-inline text-gray-600 small">Student Name</span>-->
                <img class="img-profile rounded-circle" src="img/my_user_pic.jpg">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#modalMyUserProfile">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  My Profile
                </a>
				 
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h2 class="h3 mb-0 text-gray-800">Welcome ${user.name}</h2>
            <a href="/question" class="d-none d-sm-inline-block btn btn-lg btn-primary shadow-sm"><i class="far fa-play-circle  text-white-50"></i> Start Quiz</a>
          </div>

<!--
          <Content Row>
          <div class="row">
            
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
					Mehul, you can delete this entire <b><u>Content Row</u></b> code & put the main quiz content here..
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                        </div>
                        <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
		</Content>-->
		
		
		
		
      </div>
    </div>

  </div>
        <!-- /.container-fluid -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">X</span>
          </button>
        </div>
        <div class="modal-body">${user.name}, You sure want to leave?</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="logout">Logout</a>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Profile Modal-->
  <div class="modal fade" id="profileModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Mehul, Please Put Link to Profile Page Here And Let me know. I will delete this section after it.... </h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true"></span>
          </button>
        </div>
        <div class="modal-body">Yes, I know you can also delete this section, but to show some entry in Github, let me do it :) </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">All Right!</button>
          <a class="btn btn-primary" href="">There is no other option :D </a>
        </div>
      </div>
    </div>
  </div>
  
  
   <!-- Profile Modal-->
   <form action="/updateStudent" method="get">
	  <div class="modal fade" id="modalMyProfile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
	  aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header text-center">
	        <h4 class="modal-title w-100 font-weight-bold">Profile</h4>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body mx-3">
	      
	      <input type="hidden" value="${user.student_id}" name="student_id">
	        
	        <div class="md-form mb-0">
	          <i class="fas fa-user prefix grey-text"></i>
	          <input type="text" id="form34" class="form-control validate" name="name" value="${user.name}">
	          <label data-error="wrong" data-success="right" for="form34">Your name</label>
	        </div>
	
	        <div class="md-form mb-0">
	          <i class="fas fa-envelope prefix grey-text"></i>
	          <input type="email" id="form29" class="form-control validate" name="email" value="${user.email}">
	          <label data-error="wrong" data-success="right" for="form29">Your email</label>
	        </div>
	
	        <div class="md-form mb-0">
	          <i class="fas fa-tag prefix grey-text"></i>
	          <input type="text" id="form32" class="form-control validate" name="username" value="${user.username}">
	          <label data-error="wrong" data-success="right" for="form32">Username</label>
	        </div>
			
			<div class="md-form mb-0">
	          <i class="fas fa-tag prefix grey-text"></i>
	          <input type="text" id="form33" class="form-control validate" name="password" value="${user.password}">
	          <label data-error="wrong" data-success="right" for="form33">Password</label>
	        </div>
	
	        <div class="md-form">
	          <i class="fas fa-pencil prefix grey-text"></i>
	          <textarea type="text" id="form8" class="md-textarea form-control" rows="3" name="address"></textarea>
	          <label data-error="wrong" data-success="right" for="form8">Address</label>
	        </div>
	
	      </div>
	      <div class="modal-footer d-flex justify-content-center">
	        <button class="btn btn-unique btn-primary btn-lg" type="submit">Update <i class="fas fa-paper-plane-o ml-1"></i></button>
	      </div>
	    </div>
	  </div>
	</div>
</form>

<!-- User Profile -->

	  <div class="modal fade" id="modalMyUserProfile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
	  aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header text-center">
	        <h4 class="modal-title w-100 font-weight-bold">Profile</h4>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body mx-3">
	      
	      	<div class="md-form mb-0">
	          <i class="fas fa-id-badge"></i>
	          <label data-error="wrong" data-success="right" for="form34">Your Student-Id: <strong>${user.student_id}</strong></label>
	        </div>
	        
	        <div class="md-form mb-0">
	          <i class="fas fa-user prefix grey-text"></i>
	          <label data-error="wrong" data-success="right" for="form34">Your name: <strong>${user.name}</strong></label>
	        </div>
	
	        <div class="md-form mb-0">
	          <i class="fas fa-envelope prefix grey-text"></i>
	          <label data-error="wrong" data-success="right" for="form29">Your email: <strong>${user.email}</strong></label>
	        </div>
	
	        <div class="md-form mb-0">
	          <i class="fas fa-tag prefix grey-text"></i>
	          <label data-error="wrong" data-success="right" for="form32">Username: <strong>${user.username}</strong></label>
	        </div>
			
			<div class="md-form mb-0">
	          <i class="fas fa-key"></i>
	          <label data-error="wrong" data-success="right" for="form33">Password: <strong>${user.password}</strong></label>
	        </div>
	
	        <div class="md-form">
	          <i class="fas fa-atlas"></i>
	          <label data-error="wrong" data-success="right" for="form8">Address: <strong>${user.address}</strong></label>
	        </div>
	
	      </div>
	    </div>
	  </div>
	</div>


  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
  
  <!-- Custom scripts for Quiz module-->
  <script src="js/quiz_custom_js.js"></script>

</body>

</html>