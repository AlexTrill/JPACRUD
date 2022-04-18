<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submission Details</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>

	<div class="container-fluid">
		<a href="home.do"><button name="home" type="submit">Home</button></a>
		<a href="createPage.do"><button name="create" type="submit">Add
				a submission</button></a>
		<h1>Submission Details</h1>

		<div>
			<h5>${subs.name} (${subs.type})</h5>
			<c:if test="${not empty subs.aka}">
				<p>Also Known As: ${subs.aka}</p>

			</c:if>
			
	<div>
			<c:if test="${not empty subs.image}">
				<img src="${subs.image}" width="375" height="325">
			</c:if>
	</div>

			<div>
				<c:if test="${not empty subs.tutorial}">
					 Tutorial Link:<a href="${subs.tutorial}" target="_blank">${subs.name}
						tutorial </a>
				</c:if>
			</div>


	<div>
			<form  action="deleteSubmission.do" method="POST">
				<button class="btn btn-danger" type="submit" value="${subs.id}" name="submission" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
					
			</form>
	</div>
			<div>
				<form action="update.do" method="POST">
					<button class="btn btn-info" type="submit" value="${subs.id}" name="submission">Update</button>
						
				</form>
			</div>



		</div>
	</div>

</body>
</html>