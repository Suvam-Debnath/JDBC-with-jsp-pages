<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert database page</title>
</head>
<body>
	<%
		int empno=Integer.parseInt(request.getParameter("empno"));
		String ename=request.getParameter("ename");
		String job=request.getParameter("job");
		double sal=Double.valueOf(request.getParameter("sal"));
		
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
			String query="INSERT INTO EMP1(EMPNO,ENAME,JOB,SAL) VALUES('"+empno+"','"+ename+"','"+job+"','"+sal+"')";
			
			int rn=stmt.executeUpdate(query);
			if(rn>0)
			{
				response.sendRedirect("home.jsp");
			}
			else
			{
				response.sendRedirect("insert.jsp");
			}
			con.close();
		}
		catch(Exception e)
		{
			response.sendRedirect("insert.jsp");
		}
		

	%>
</body>
</html>