<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <meta name="description" content="">
	  <meta name="author" content="">
	
	  <title>Quiz</title>
	
	  <!-- Custom fonts for this template -->
	  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	  <!-- Custom styles for this template -->
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
        <a class="nav-link" href="/logout">
          <i class="fas fa-sign-out-alt"></i>
          <span>Logout</span></a>
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

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading 
          <h1 class="h3 mb-2 text-gray-800">Tables</h1>
          <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>
-->
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary"></h6>
            </div>
            <div class="card-body">
              
			  
			 	  <!--QUIZ BODY STARTS HERE-->
	<div id="quizbody" class="container">
        <div class="row"><br><br>
            <div class="col-sm-8 col-sm-offset-2">
                <div class="loader">

                    <div id="quiz">
                  
                        <div class="question"> 
                            <h3><span class="label label-warning" id="qid">1</span>
                            <span id="question"> How can you add a single line comment in a JavaScript?</span>
                            </h3>
                        </div>
                        <ul>
						<!--<h3 h3 mb-0 text-gray-800 class="question" ><span id="question"> How can you add a single line comment in a JavaScript?</span></h3>-->
                          <li>
                            <input type="radio" id="f-option" name="selector" value="1">
                            <label for="f-option" class="element-animation">/*-- comment --*/</label>
                            <div class="check"></div>
                          </li>
                          
                          <li>
                            <input type="radio" id="s-option" name="selector" value="2">
                            <label for="s-option" class="element-animation">comment //</label>
                            <div class="check"><div class="inside"></div></div>
                          </li>
                          
                          <li>
                            <input type="radio" id="t-option" name="selector" value="3">
                            <label for="t-option" class="element-animation">comment [ ]</label>
                            <div class="check"><div class="inside"></div></div>
                          </li>
						  
                        </ul>
						
                    </div>				
					
                </div>
					
                <div class="text-muted">
                    <span id="answer"></span>
                </div>
                
            </div>
			
			
        </div>
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <div id="result-of-question" class="pulse animated" style="display: none;">
                    <span id="totalCorrect" class="pull-right"></span>
                    <table class="table table-hover table-responsive" >
                        <thead>
                            <tr>
                                <th>Question No.</th>
                                <th>Our answer</th>
                                <th>Your answer</th>
                                <th>Result</th>
                            </tr>
                        </thead>
                        <tbody id="quizResult"></tbody>
                    </table>
                </div>
            </div>
        </div> 
    </div>
<!--QUIZ BODY ENDS HERE--> 
			  
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

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
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
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

  <!-- Page level plugins -->
  
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  
  <!-- Custom scripts for Quiz module-->
  <script src="js/quiz_custom_js.js"></script>

</body>

</html>