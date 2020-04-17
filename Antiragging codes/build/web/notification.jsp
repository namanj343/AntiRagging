<html>
    <head>
        <link rel="stylesheet" type="text/css" href="pic.css">
		<link rel="stylesheet" type="text/css" href="grid.css">
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>
        <title>Details of students</title>
    </head>
    <body>
        <a href="index.html">
             <img src="noragging.png" class="center" height=20% width=20%></a><br><br><br>
        <%@page import="java.sql.*" %>
        <%
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@Dell:1521:XE", "System", "Thanku71");
        Statement st=conn.createStatement();
        String cn = String.valueOf(session.getAttribute("cname"));

        String sql="select Student3.Student_First_name ,Student3.Student_Family_name,Student3.student_email,Student3.enrollement_number,ComplainDetail1.complain from Student3 INNER JOIN ComplainDetail1 ON Student3.enrollement_number=ComplainDetail1.enrollement_number And Student3.college_name='"+cn+"'  ";
        System.out.println("coolge nam is "+cn);
        ResultSet rs=st.executeQuery(sql);
        try
       
{
%>
<table border=1 width=80% height=80% cellpadding="3"><tr><th style="color:white">First name</th><th style="color:white">Family name</th><th style="color:white">Enrollment number</th><th style="color:white">Student email id</th><th style="color:white">Complain Details</th><tr>
        <%
        if(rs.next()){%>
    <tr>
        <td style="color:white"><%= rs.getString("Student_First_name")%></td>
        <td style="color:white"><%= rs.getString("Student_Family_name")%></td>
        <td style="color:white"><%= rs.getString("enrollement_number")%></td>
        <td style="color:white"><%= rs.getString("Student_email")%></td>
        <td style="color:white"><%= rs.getString("complain")%></td>
    </tr>
<%
         }
     
        }
catch(SQLException e)
{
    e.printStackTrace();
}%>
   </table>
  </body>
</html>