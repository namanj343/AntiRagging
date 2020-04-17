<html>
    <head>
        <link rel="stylesheet" type="text/css" href="pic.css">
		<link rel="stylesheet" type="text/css" href="grid.css">
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>
        <title>College Details</title>
    </head>
    <body>
         <a href="index.html">
             <img src="noragging.png" class="center" height=20% width=20%></a><br><br><br>
        <%@ page import ="java.sql.*"%>
        <%Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@Dell:1521:XE", "System", "Thanku71");
        Statement st=conn.createStatement();
        String cn = String.valueOf(session.getAttribute("cname"));
        
        String university = String.valueOf(session.getAttribute("au"));
        String sql="select * from College3 where college_name = '"+cn+"'";
        //take parameters like of collegename from college
        
        System.out.println("university is "+university);
        
        ResultSet rs=st.executeQuery(sql);
        try{
            if(rs.next()){
                    
                out.println("<h4>COLLEGE NAME</h4>"+ rs.getString(1));
                out.println("<h4>COLLEGE ADDRESS</h4>"+ rs.getString(2));
                out.println("<h4>AFFILIATED UNIVERSITY</h4>"+ rs.getString(3));
                out.println("<h4>DIRECTOR NAME</h4>"+ rs.getString(4));
                out.println("<h4>COLLEGE CONTACT NUMBER</h4>"+ rs.getString(5));
            
            
            
            
            }
       
       }
       catch(Exception e)
       {
               
           out.println(e.getMessage());
               
       }
    %>
    </body>
</html>