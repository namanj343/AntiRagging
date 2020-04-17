<!DOCTYPE html>
<html lang="en">
<head>
  <title>College Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="pic.css">
</head>
<body >
    <a href="index.html">
        <img src="noragging.png" class="center" height=10% width=20%></a>
<div class="container">
    <form action="College_check" method="post">
<div class="page-header">
  <h2>Login</h2>
</div>
<div class="jumbotron">

  <div class="form-group">
    <label for="name">College Name *</label>
      <input type="name" class="form-control" id="lname" name="lname" placeholder="Enter College Name" required>
    </div>
	 <div class="form-group">
      <label for="pwd">Password*</label>
      <input type="password" class="form-control" id="lpwd" name="lpwd" placeholder="Enter Password" required>
    </div>
     </div>
	 <button type="submit" class="btn btn-success btn-block">Login</button>
  </form>
	 </div>
	
	 </body>
</html>