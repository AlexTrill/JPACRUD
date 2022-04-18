<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<a href="home.do"><button name="home" type="submit">Home</button></a>
	<h1>Update Submission</h1>


	<form action="updateSubmission.do" method="Post">
		<fieldset>
			<legend>Create Submission</legend>
			<div class="form-group">
				<label for="name">Name: </label> <input type="text" name="name"
					value="${s.name}" id="name" class="form-control" required />
			</div>
			<div class="form-group">
				<label for="type">Type: </label> <input type="text" name="type"
					value="${s.type}" id="type" class="form-control" required />
			</div>
				<label for="giRequired">Gi required?: </label>
					<br>
					No: <input type="radio" name="giRequired" value="Yes" ${s.giRequired == 'Yes' ? 'checked' : ''}/>
					<br>
            		Yes: <input type="radio" name="giRequired" value="No" ${s.giRequired == 'No' ? 'checked' : ''}/>

			<div class="form-group">
				<label for="executedFrom">executedFrom: </label> <input type="text"
					name="executedFrom" value="${s.executedFrom}" id="executedFrom"
					class="form-control" required />
			</div>

			<div class="form-group">
				<label for="specialists">specialists: </label> <input type="text"
					name="specialists" value="${s.specialists}" id="specialists"
					class="form-control" required />
			</div>
			<div class="form-group">
				<label for="aka">aka: </label> <input type="text" name="aka"
					value="${s.aka}" id="aka" class="form-control" required />
			</div>

			<input type="hidden" name="id" value="${s.id}" /> <input
				type="submit" value="Update Submission" class="btn btn-primary" />

		</fieldset>
	</form>
</body>
</html>