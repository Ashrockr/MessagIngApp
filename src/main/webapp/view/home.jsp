<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<title>Send Message</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container ">
		<div class="top-buffer ">
			<div class="col-md-6 mx-auto">
				<div class="error-space bottom-padding">
					<c:if test="${addSuccessfull}">
						<div class="alert alert-success alert-dismissible fade show"
							role="alert">
							<strong>Success!</strong> Number added.
							<button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
					</c:if>
				</div>
				<span class="anchor" id="formLogin"></span>
				<!-- form card login -->
				<div class="card text-white bg-primary">
					<div class="card-header bg-primary text-white  ">
						<h3 class="mb-0">Add Mobile Number</h3>
					</div>
					<div class="card-body container bg-light">
						<form class="form" action="addNumber" method="post"
							autocomplete="off" id="formLogin">
							<div class="form-group ">
								<label for="number" class="text-primary">Mobile Number</label>
								<input type="text" placeholder="Enter Mobile Number..."
									class="form-control form-control " id="username" required
									name="number" pattern="[789][0-9]{9}"
									title="Enter valid mobile number" autofocus="">
							</div>
							<div class="form-group text-primary">
								<input type="submit" class="btn btn-primary btn-block"
									value="Submit">
							</div>
						</form>
					</div>
					<!--/card-block-->
				</div>
				<br>
				<br>

				<div class="card text-white bg-primary">
					<div class="card-header bg-primary text-white  ">
						<h3 class="mb-0">Send Message</h3>
					</div>
					<div class="card-body container bg-light">
						<form class="form" action="sendMessage" method="post"
							autocomplete="off" id="formLogin">
							<div class="form-group">
								<label for="message" class="text-primary">Message</label>
								<input class="form-control" name="message"/>
							</div>
							<div class="form-group text-primary">
								<input type="submit" class="btn btn-primary btn-block"
									value="Send">
							</div>
						</form>
					</div>
					<!--/card-block-->
				</div>
			</div>
			<!--/row-->
		</div>
	</div>

</body>
</html>