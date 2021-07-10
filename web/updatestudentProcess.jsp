<%-- 
    Document   : upprocess
    Created on : Aug 18, 2020, 6:45:51 PM
  
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh"
        content="1; url = homepage2.jsp" />  
    </head>
    <style>
        .overlay {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.9);
  overflow-x: hidden;
  transition: 0.5s;
}

.overlay-content {
  position: relative;
  top: 25%;
  width: 100%;
  text-align: center;
  margin-top: 30px;
}

.overlay a {
  padding: 8px;
  text-decoration: none;
  font-size: 36px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
  color: #f1f1f1;
}

.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
}

@media screen and (max-height: 450px) {
  .overlay a {font-size: 20px}
  .overlay .closebtn {
  font-size: 40px;
  top: 15px;
  right: 35px;
  }
}
        </style>
        <div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
    <a href="Home.jsp">Home</a>
    <a href="About.jsp">About</a>
    <a href="Login.jsp">Logout</a>
  </div>
</div>
<span style="font-size:40px;cursor:pointer" onclick="openNav()">&#9776;</span>
<script>
function openNav() {
  document.getElementById("myNav").style.width = "30%";
}
function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}
</script>
    <%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/student";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String studid=request.getParameter("enrollno");
String fname=request.getParameter("fname");
String lname=request.getParameter("name");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String language=request.getParameter("language");
String eduprime=request.getParameter("eduprime");
String edusec=request.getParameter("edusec");
String stream =request.getParameter("stream");
String semester =request.getParameter("semester");
String cgpa =request.getParameter("cgpa");
String sports =request.getParameter("sports");
String courses =request.getParameter("courses");
String internships =request.getParameter("internships");
if(studid != null)
{
Connection con = null;
PreparedStatement ps = null;
int studentID = Integer.parseInt(studid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update students set enrollno=?,fname=?,name=?,address=?,contact=?,language=?,eduprime=?,edusec=?,stream=?,semester=?,cgpa=?,sports=?,courses=?,internships=? where enrollno="+studid;
ps = con.prepareStatement(sql);
ps.setString(1,studid);
ps.setString(2, fname);
ps.setString(3, lname);
ps.setString(4, address);
ps.setString(5, contact);
ps.setString(6,language );
ps.setString(7, eduprime);
ps.setString(8, edusec);
ps.setString(9, stream);
ps.setString(10, semester);
ps.setString(11, cgpa);
ps.setString(12, sports );
ps.setString(13, courses );
ps.setString(14, internships );
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
</html>
