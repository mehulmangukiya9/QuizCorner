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

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  
	<title>Registration page</title>

</head>
<body class="bg-gradient-primary">

<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-login-image"></div>-->
          <div class="col-lg-12">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>
              <form class="user" action="/registerStudent">
                <div class="form-group">
                    <input type="text" class="form-control form-control-user" required="required" name="name" id="exampleFirstName" placeholder="Name">                  
                </div>
                <div class="form-group">
                  <input type="email" class="form-control form-control-user" required="required" name="email" id="exampleInputEmail" placeholder="Email Address">
                </div>
				<div class="form-group">
                  <input type="text" class="form-control form-control-user" pattern="[A-Za-z0-9]{1,20}" name="username" id="exampleInputUsername" placeholder="Username">
                </div>
                <div class="form-group">                  
                    <input type="password" class="form-control form-control-user" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="password" id="exampleInputPassword" placeholder="Password">                                
                </div>
				<div class="form-group">                  
                    <input type="text" class="form-control form-control-user" required="required" name="address" id="exampleInputAddress" placeholder="Address">                                
                </div>
              
                <input type="submit" value="Register Me" class="btn btn-primary btn-user btn-block">
                
              </form>
              <hr>
            </div>
          </div>
      </div>
    </div>

  </div>

</body>
</html>