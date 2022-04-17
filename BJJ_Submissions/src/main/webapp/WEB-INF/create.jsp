<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Page</title>
</head>
<body>
<h1>Add Submission</h1>
<form action="addSubmission.do" method="Post">
			<fieldset>
				<legend>Create Submission</legend>
				<div class="form-group">
					<label for="name">Name: </label>
					<input type="text" name="name" id="name" class="form-control" required />
				</div>
			<div class="form-group">
					<label for="type">Type: </label>
					<input type="text" name="type" id="type" class="form-control" required/>
				</div>
				<div class="form-group">
					 <label for="lifeSpan">Gi required?: </label>
					 <input type="text" name="giRequired" id="giRequired" class="form-control" required/>
				</div>
				<div class="form-group">
					<label for="executedFrom">executedFrom: </label>
					<input type="text" name="executedFrom" id="executedFrom" class="form-control" required />
				</div>
				
				<div class="form-group">
					<label for="specialists">specialists: </label>
					<input type="text" name="specialists" id="specialists" class="form-control" required />
				</div> 
				<div class="form-group">
					<label for="aka">aka: </label>
					<input type="text" name="aka" id="aka" class="form-control" required />
				</div> 
				
				<input type="submit" value="Add Submission" class="btn btn-primary"/>
			</fieldset>
		</form>
</body>
</html>