<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details</title>
</head>
<body>

<div class="container-fluid">
<a href="home.do" ><button name="home" type="submit">Home</button></a>
	<h1>Submission Details</h1>

	<div>
		<h5>${subs.name}(${subs.type})</h5>
		<p>${subs.aka}</p>
		<p>${subs.id}</p>
		
		<form action ="deleteSubmission.do" method = "POST">
						<input type="hidden" value="${subs.id}" name = "submission"/>
						<input type="submit" value="Delete"/>
						</form>
						
		<form action ="update.do" method = "POST">
						<input type="hidden" value="${subs.id}" name = "submission"/>
						<input type="submit" value="Update"/>
						</form>
	
		
		
	</div>
</div>

</body>
</html>