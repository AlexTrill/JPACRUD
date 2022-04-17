<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>

<body>
  <a href="createPage.do" ><button name="create" type="submit">Add a submission</button></a>
  <h1>BJJ Submission Database</h1>
   
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
					</tr>
					
				</c:forEach>
			</tbody>
		</table>
</body>
</html>