<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">




<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<div class ="container mt-3">
<div class="row">
<div class="col-md-6 offset-md-3">
<h1 class="text center mb-3 ">UPDATE CUSTOMER </h1>
<form action="${pageContext.request.contextPath}/updateHandler" method="post">
<div>
<input type="hidden" name="id" value="${customer.id}"/>
</div>
<div class="form-group">
<label>First Name</label>
<input type="text" name="firstName" placeholder="enter First name" class="form-control" value="${customer.firstName }">
</div>
<div class="form-group">
<label>Last Name</label>
<input type="text" name="lastName" placeholder="enter Last Name" class="form-control" value="${customer.lastName }"/>
</div>
<div class="form-group">
<label> Email</label>
<input type="email" name="email" placeholder="enter Email" class="form-control" value="${customer.email }">
</div>
<div class="container text-center">
<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">back</a>
<button type="submit" class="btn btn-primary">Save</button>
</div>
</form>
</div>
</div>
</div>
</body>
</html>