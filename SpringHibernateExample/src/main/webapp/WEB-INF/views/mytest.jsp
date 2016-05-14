<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Employee Registration Form</title>

<style>

	.error {
		color: #ff0000;
	}
</style>

</head>

<body>

<%-- 	<h2>Registration Form</h2>
 
	<form:form method="POST" modelAttribute="employee">
		<form:input type="hidden" path="id" id="id"/>
		<table>
			<tr>
				<td><label for="name">Name: </label> </td>
				<td><form:input path="name" id="name"/></td>
				<td><form:errors path="name" cssClass="error"/></td>
		    </tr>
	    
			<tr>
				<td><label for="joiningDate">Joining Date: </label> </td>
				<td><form:input path="joiningDate" id="joiningDate"/></td>
				<td><form:errors path="joiningDate" cssClass="error"/></td>
		    </tr>
	
			<tr>
				<td><label for="salary">Salary: </label> </td>
				<td><form:input path="salary" id="salary"/></td>
				<td><form:errors path="salary" cssClass="error"/></td>
		    </tr>
	
			<tr>
				<td><label for="ssn">SSN: </label> </td>
				<td><form:input path="ssn" id="ssn"/></td>
				<td><form:errors path="ssn" cssClass="error"/></td>
		    </tr>
	
			<tr>
				<td colspan="3">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update"/>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register"/>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</table>
	</form:form> --%>

	<%--  <h1>Spring MVC - Hibernate File Upload to Database Demo</h1>
	<%-- <form:form method="POST"  enctype="multipart/form-data">	
        <form method="post"  enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Pick file #1:</td>
                    <td><input type="file" name="fileUpload" size="50" /></td>
                </tr>
 						<tr>
                    <td>Pick file #1:</td>
                    <td><input type="file" name="fileUpload" size="50" /></td>
                </tr>
               

                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Upload" /></td>
                </tr>
            </table>
        </form>
</form:form> --%>

 <h1>Spring MVC - Hibernate File Upload to Database Demo</h1>
	<form:form method="POST"  modelAttribute="fileBucket" enctype="multipart/form-data">	
        <form method="post"  enctype="multipart/form-data">
            <table border="0">
<tr>
               <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="file">Upload a file</label>
                    <div class="col-md-7">
                        <form:input type="file" path="file" id="file" class="form-control input-sm"/>
                       <%--  <div class="has-error">
                            <form:errors path="file" class="help-inline"/>
                        </div> --%>
                    </div>
                </div>
            </div>
 					</tr>
  <tr>
                    <td colspan="2" align="center"><input type="submit" value="Upload" /></td>
                </tr>
            </table>
        </form>
</form:form>
	<br/>
	
	<br/><br/>
	<div> Sample Vidio</div>
	<br/>
	<img alt="" style="width: 129" src="${pageContext.request.contextPath}/resources/images/Desert.jpg"><br/>
	<video  controls  width="400">
	<source src="${pageContext.request.contextPath}/TestVedios/qwqeqe.mp4" type="video/mp4"></video>
	<br/>
	<!-- <video src="C:/Users/pullarak/Desktop/TestVedios/Wildlife.wmv"></video> -->
	<%-- <video  controls  width="400">
	<source src="${pageContext.request.contextPath}/resources/Videos/test23.mp4" type="video/mp4"></video> --%>
	
	
	<br/>
	
	Go back to <a href="<c:url value='/list' />">List of All Employees</a>  
</body>
</html>