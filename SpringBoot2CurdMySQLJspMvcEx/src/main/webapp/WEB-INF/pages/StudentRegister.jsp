<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.err{
	color: red;
}
</style>
</head>
<body>
<h3>WELCOME TO STUDENT REGISTER PAGE</h3>
<form:form action="save" method="POST" modelAttribute="student">
<pre>
NAME  : <form:input path="stdName"/>
  <form:errors path="stdName" cssClass="err"/>

GENDER: 
  <form:radiobutton path="stdGen" value="Male"/> Male
  <form:radiobutton path="stdGen" value="Female"/> Female
  <form:errors path="stdGen" cssClass="err"/>  
  
PASSWORD: <form:password path="stdPwd"/>
	<form:errors path="stdPwd" cssClass="err"/>
COURSE  : <form:select path="stdCourse">
				<form:option value="">-SELECT-</form:option>
				<form:option value="Java">Java</form:option>
				<form:option value="Angular">Angular</form:option>
				<form:option value="dotNet">dotNet</form:option>
				<form:option value="PHP">PHP</form:option>
			</form:select>  
 <form:errors path="stdCourse" cssClass="err"/>			      
ADDRESS : <form:textarea path="stdAddr"/>
<form:errors path="stdAddr" cssClass="err"/>
LANGUAGES:
        <form:checkbox path="stdLangs" value="ENG"/> ENG
        <form:checkbox path="stdLangs" value="HIN"/> HIN
        <form:checkbox path="stdLangs" value="TAM"/> TAM
        <form:checkbox path="stdLangs" value="TEL"/> TEL
 <form:errors path="stdLangs" cssClass="err"/>        
		<input type="submit" value="Add Student">
</pre>
</form:form>
${message}
</body>
</html>
