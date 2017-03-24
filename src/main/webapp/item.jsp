<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>item</title>
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	</head>
<body>
	<table id="navb">
		<tr><td colspan="8" style="font-size:28px;">雇员信息表 </td></tr>
		<tr>
			<td>员工编号</td>
			<td>员工姓名</td>
			<td>员工职位</td>
			<td>上级编号</td>
			<td>受雇日期</td>
			<td>薪金</td>
			<td>佣金</td>
			<td>部门编号</td>
		</tr>
	</table>
	<script type="text/javascript">
		$(function(){
			window.onload = function(){ 
				$.ajax({
					url:"Auth/getselectAll",
					type:"post",
					success:function(data){
						if(data.code==200){
							$(data.result).each(function(index,e){
	 							var test="<tr><td>"+e.empno+"</td><td>"+e.ename+"</td><td>"+e.job+"</td><td>"+e.mgr+"</td><td>"+e.hiredate+"</td><td>"+e.comm+"</td><td>"+e.sal+"</td><td>"+e.deptno+"</td></tr>";
				                $("#navb").append(test).trigger("create");
							})
						}else{
							alert(data.message);
						}
					}
				});
			} 
		})
	</script>