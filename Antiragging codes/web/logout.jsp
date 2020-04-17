<html>
    <head>
        <link rel="stylesheet" type="text/css" href="pic.css">
		<link rel="stylesheet" type="text/css" href="grid.css">
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>
        <title>Logged Out</title>
    </head>
    <body>
        <a href="index.html">
             <img src="noragging.png" class="center" height=20% width=20%></a><br><br><br>
        

        <% 
             session.invalidate();

        %>

        <h1><font color="White">You are Successfully logged out...</font></h1>

        

    </body>

</html>