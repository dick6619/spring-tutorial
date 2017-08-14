<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String contextPath = request.getContextPath();
    String pageEncoding = request.getCharacterEncoding();
    String charset = response.getCharacterEncoding();
%>
<html>
<head>
<link href='<%=contextPath + "/resources/css/bootstrap.min.css"%>' rel="stylesheet">
<link href='<%=contextPath + "/resources/css/font-awesome.min.css"%>' rel="stylesheet">
<link href='<%=contextPath + "/resources/css/emp.css"%>' rel="stylesheet">
<script src="<%=request.getContextPath() + "/resources/js/jquery-3.2.1.min.js"%>"></script>
<script src="<%=request.getContextPath() + "/resources/js/bootstrap.min.js"%>"></script>
<script>
    //
    function test1() {
    	    alert('req=' + '<%=pageEncoding%>' + ', ' + 'res=' + '<%=charset%>');
    }
	// 	test restful ws use ajax get
	function test2() {
		$.ajax({
			url : 'http://localhost:8080/spring-mvc4-jpa/rest/json2',
			type : 'GET',
			dataType : 'json',
			cache : false,
			success : function(data) {
				$('#body').empty();
				for (var i = 0; i < data.length; i++) {
					$('#body').append('<tr>' +
			                   '<td>' + data[i].empno + '</td>' + 
			                   '<td>' + data[i].ename + '</td>' + 
			                   '<td>' + data[i].job + '</td>' + 
			                   '<td>' + data[i].hiredate + '</td>' + 
			                   '<td>' + data[i].birthday + '</td>' + 
			                   '<td>' + data[i].sal + '</td>' + 
			                   '<td>' + data[i].comm + '</td>' + 
			                   '<td>' + data[i].deptVO.dname + '</td>' + 
			                   '</tr>')
				}
				// 				$.each(data, function() {
				// 					alert(this.empno + ',' + this.ename);
				// 				});
				// 				$.each(data, function(i) {
				// 					alert(data[i].ename);
				// 				});
			},
			error : function() {
				alert('error!!!');
			}
		});
	}
	function test3() {
		$.ajax({
			url : 'http://localhost:8080/spring-mvc4-jpa/rest/json4/' + $('#empno').val(),
			type : 'GET',
			dataType : 'json',
			cache : false,
			success : function(data) {
				$('#body').empty();
				$('#body').append('<tr>' +
				                   '<td>' + data.empno + '</td>' + 
				                   '<td>' + data.ename + '</td>' + 
				                   '<td>' + data.job + '</td>' + 
				                   '<td>' + data.hiredate + '</td>' + 
				                   '<td>' + data.birthday + '</td>' + 
				                   '<td>' + data.sal + '</td>' + 
				                   '<td>' + data.comm + '</td>' + 
				                   '<td>' + data.deptVO.dname + '</td>' + 
				                   '</tr>')
			},
			error : function() {
				alert('error');
			}
		});
	}
</script>
</head>
<body>
<h4>charset = UTF-8:</h4> <p>-->下指令給瀏覽器，用UTF-8解碼．等於response.setCharacterEncoding("UTF-8")
<h4>pageEncoding = UTF-8:</h4> <p>-->下指令給server，用UTF-8解碼．等於resquest.setCharacterEncoding("UTF-8")
<h4>Template Data:</h4> <p>-->HTML的部分container不會處理，直接送到client端，charset沒設定編碼預設是用西歐語系解碼
<h4>Elements:</h4> <p>-->java code的部分container會處理，會使用到編碼濾器
	<input type='text' id='empno'>
	<button onclick='test3()'>搜尋</button>
	<button onclick='test2()'>所有員工</button>
	<button onclick='test1()'>encoding</button>

	<table class='table table-bordered' style='margin: 10px; width: 60%;'>
		<thead>
			<tr>
				<th>員工編號</th>
				<th>員工姓名</th>
				<th>職稱</th>
				<th>任職日期</th>
				<th>生日</th>
				<th>薪水</th>
				<th>獎金</th>
				<th>部門名稱</th>
			</tr>
		</thead>
		<tbody id='body'>
        </tbody>
	</table>
</body>
</html>