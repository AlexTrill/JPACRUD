<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Page</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<a href="home.do"><button name="home" type="submit">Home</button></a>
	<h1>Add Submission</h1>
	<form action="addSubmission.do" method="Post">
		<fieldset>
			<legend>Create Submission</legend>
			<div class="form-group">
				<label for="name">Name: </label> <input type="text" name="name"
					id="name" class="form-control" required />
			</div>
			<div class="form-group">
				<label for="type">Type: </label> <input type="text" name="type"
					id="type" class="form-control" required />
			</div>
			<div class="form-group">

				<label for="giRequired">Gi required?: </label> 
				
				Yes: <input type="radio" id="Yes" name="giRequired" value="Yes">
				
				No: <input type="radio" id="No" name="giRequired" value="No">

			</div>
			<div class="form-group">
				<label for="executedFrom">Positions Commonly Executed From: </label> <input type="text"
					name="executedFrom" id="executedFrom" class="form-control" required />
			</div>

			<div class="form-group">
				<label for="specialists">Specialists Of This Submission: </label> <input type="text"
					name="specialists" id="specialists" class="form-control" required />
			</div>
			<div class="form-group">
				<label for="aka">Also Known As: </label> <input type="text" name="aka"
					id="aka" class="form-control" required />
			</div>

			<input type="submit" value="Add Submission" class="btn btn-primary" />

		</fieldset>
	</form>

</body>
</html>