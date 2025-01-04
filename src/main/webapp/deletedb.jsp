<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete database page</title>
</head>
<body>
	<%
	int empno=Integer.parseInt(request.getParameter("empno"));
	
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	try
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		
		String url="jdbc:oracle:thin:@localhost:1521";
		String userid="system";
		String password="suvam";
		con=DriverManager.getConnection(url,userid,password);
		stmt=con.createStatement();
		String query="DELETE FROM EMP1 WHERE EMPNO='"+empno+"'";
		int rn= stmt.executeUpdate(query);
		if(rn>0)
		{
			response.sendRedirect("home.jsp");
		}
		else
		{
			response.sendRedirect("delete.jsp");
		}
		con.close();
	}
	catch(Exception e)
	{
		response.sendRedirect("delete.jsp");
	}
	%>
</body>
</html>