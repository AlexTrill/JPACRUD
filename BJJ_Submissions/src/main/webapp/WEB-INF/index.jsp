<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>

<body>
	<a href="createPage.do"><button name="create" type="submit">Add
			a submission</button></a>
	<h1>Brazilian Jiu-Jitsu Submissions</h1>
<p>"Jiu-jitsu is the gentle art. It's the art where a small man or woman is going to prove to you, no matter how strong you are, no matter how mad you get, that you're going to have to accept defeat. That's what Brazilian Jiu-jitsu is."

- Saulo Ribeiro.</p>
	
	<form action="getSubById.do" method="GET">
			 Submission ID: <input type="text" name="sid" /> <input type="submit"
				 value="Find Submission" />
		</form>

	<table class="table table-striped">
		<thead class="table-dark">
			<tr>
				<th>Name</th>
				<th>Type</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="s" items="${subs}">
				<tr>
					<td><a href="getSubById.do?sid=${s.id}">${s.name}</a></td>

					<td>${s.type}</td>
					<td>
						
					</td>

				</tr>

			</c:forEach>
		</tbody>
	</table>
</body>
</html>