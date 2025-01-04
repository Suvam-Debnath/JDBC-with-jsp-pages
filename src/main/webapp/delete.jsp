<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete page</title>
<style type="text/css">
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
	.midleft li:hover
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
    	<form action="deletedb.jsp" method="post">
    	<table align="center" >
			<tr>
				<td>Employee Number:</td>
				<td><input type="text" name="empno" required></td>
				
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Delete">
				</td>
				
			</tr>
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