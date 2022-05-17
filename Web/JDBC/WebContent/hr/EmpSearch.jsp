<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보 검색</title>
</head>
<body>
<h3>검색하려는 사원의 사원번호를 입력하세요.</h3>
<form action="/JDBC/Emp.do">
<input type=hidden name=action value=view>
사원번호 : <input type=text name=empId>
&nbsp;&nbsp;<input type=submit value="검색">
</form>
<br><br>
<h3>검색하려는 사원들의 부서번호를 입력하세요.</h3>
<form action="/JDBC/Emp.do">
<input type=hidden name=action value=byDept>
부서번호 : <input type=text name=deptId>
&nbsp;&nbsp;<input type=submit value="검색">
</form>
<br><br>
<h3>검색하려는 사원의 이름을 입력하세요.</h3>
<form action="/JDBC/Emp.do">
<input type=hidden name=action value=byName>
이름 : <input type=text name=name>
&nbsp;&nbsp;<input type=submit value="검색">
</form>
</body>
</html>