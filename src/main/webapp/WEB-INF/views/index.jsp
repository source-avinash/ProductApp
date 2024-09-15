<html>

<head>
<%@ include file="./base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-ceter mb">Welcome to Product App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
							
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${products }" var="prd">
						<tr>
							<th scope="row">${prd.id }</th>
							<td>${prd.name }</td>
							<td>${prd.description }</td>
							<td class="font-weight-bold">&#x20b9; ${prd.price }</td>
							<td>
							<a href="delete/${prd.id }"><i class="fa-solid fa-trash text-danger" style="font-size: 20px;"></i></a>
							<a href="update/${prd.id }"><i class="fas fa-pen-nib text-primary" style="font-size: 20px;"></i></a>
							</td>
						</tr>
					</c:forEach>
					
						
					</tbody>
				</table>
				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
