<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search database page</title>
<style>
	*
	{
	    margin:0px auto;
	}
	body
	{
		background:rgb(165, 209, 126);
	}
	.top
	{
		width:1024px;
		height:150px;
	}
	.topleft
	{
		width:1024px;
		height:150px;
		float:left;
	    text-align: center;
	    background:rgb(19, 38, 143);
	}
	.topright
	{
		width:224px;
		height:120px;
		float:left;
	    background:rgb(200, 103, 103);
	    font-family:Garamond;
		font-weight:bold;
		font-size:18px;
		padding-top:30px;
	}
	.mid
	{
		width:1024px;
		height:auto;
	}
	.midleft
	{
		width:274px;
		height:560px;
		float:left;
		background:#990;
		color: white;
	}
	.midright
	{
		width:750px;
		height:auto;
		float:left;
		background:#B8FFF9;
		padding-top:30px;
		padding-bottom:30px;
	}
	.footer
	{
		width:1024px;
		height:35px;
		float:left;
		background:#f90;
	    text-align: center;
	    font-family:Verdana, Geneva, Tahoma, sans-serif;
	    font-style: italic;
	    font-size: x-large;
	}
	.topleft p
	{
	    font-size: 60px;
	    color: #FFD93D;
	    font-family: Garamond;
	    padding-top: 30px;
	    font-weight: bold;
	    text-shadow: #FF8400 3px 3px;
	}
	.menu ul li
	{
		display:inline-block;
		position:relative;
		padding-top:5px;
		padding-left:25px;
	}
	.menu ul li ul 
	{
		position:absolute;
		background:rgb(116, 33, 141);
		padding-left:0px;
		visibility:hidden;
	}
	.menu ul li:hover 
	{
		font-weight:bold;
		cursor:pointer;
	}
	.menu ul li:hover ul 
	{
		visibility:visible;
		font-weight:normal;
	}
	.midleft li
	{
		list-style:none;
		background:#900;
		margin-top:46px;
		padding-top:23px;
		padding-bottom:23px;
		margin-left:-11px;
		width:216px;
		text-align:center;
		font-size:30px;
		
	}
	.midleft a
	{
		text-decoration:none;
		color:#FFF;
	}
	.midleft a:hover
	{
		font-weight:bold;
		cursor:pointer;
	}
	
</style>
</head>
<body>
	<div class="top">
	<div class="topleft">
        <p>DB Con Demo</p>    
    </div>
	</div>
<div class="mid">
	<div class="midleft">
    	<ul>
        	<li><a href="home.jsp">Home</a></li>
            <li><a href="insert.jsp">Insert</a></li>
            <li><a href="delete.jsp">Delete</a></li>
            <li><a href="search.jsp">Search</a></li>
        </ul>     
    </div>
    <div class="midright">
    		<%
				Connection con=null;
    			Statement stmt=null;
    			ResultSet rs=null;
    			
    			//DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
    			try
    			{
    				String driver="oracle.jdbc.driver.OracleDriver";
    				Class.forName(driver);
    				
    				String url="jdbc:oracle:thin:@localhost:1521";
    				String userid="system";
    				String password="suvam";
    				con=DriverManager.getConnection(url,userid,password);
    				    				
    				stmt=con.createStatement();
    				
    				int empno=Integer.parseInt(request.getParameter("empno"));
    				
    				String query="SELECT EMPNO,ENAME,JOB,SAL FROM EMP1 WHERE EMPNO='"+empno+"'";
    				rs=stmt.executeQuery(query);
    				if(rs.next())
    				{
		    		%>
		    					<table align="center" width="75%" border="1">
						    		<tr>
						    			<th>EMPNO</th>
						    			<th>ENAME</th>
						    			<th>JOB</th>
						    			<th>SAL</th>
						    		</tr>
			    					<tr>
			    						<td><%=rs.getInt("EMPNO") %></td>
			    						<td><%=rs.getString("ENAME") %></td>
			    						<td><%=rs.getString("JOB") %></td>
			    						<td><%=rs.getDouble("SAL") %></td>
			    					</tr>
		    					</table>
		    		<%			
    				}
    				else
    				{
		    		%>
		    					<table align="center" width="75%" border="1">
						    		<tr>
						    			<th>NOT FOUND</th>
						    		</tr>
						    	</table>
		    		<%			
    				}
    				con.close();
    			}
    			catch(Exception e)
    			{
    				response.sendRedirect("search.jsp");
    			}
    		%>
    		
    	</table>
    </div>
</div>

<div class="mid">
	<div class="footer">
        Developed by : Suvam Debnath
    </div>
</div>
</body>
</html>