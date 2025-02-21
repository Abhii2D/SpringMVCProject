<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="./head.jsp" %>

 <style>
        body {
            background-color: #f0f8ff; /* Light Sky Blue Background */
        }
        .card {
            width: 80%;
            max-width: 900px; /* Increased width */
            margin: auto;
            margin-top: 50px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
            padding: 20px; /* Added padding */
        }
        .card-header {
            background-color: #007bff;
            color: white;
            font-size: 24px;
            text-align: center;
            padding: 15px;
            font-weight: bold;
        }
        .table {
            width: 100%;
            text-align: center;
            background-color: white;
        }
        .table td {
            padding: 15px;
            font-weight: bold;
            border: 1px solid #ddd;
        }
        .table tr:nth-child(even) {
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>

 <div class="card">
        <div class="card-header">Welcome to Product App</div>
        <div class="card-body">
         
    <a href="${pageContext.request.contextPath}/add" class="btn btn-outline-success m-2">Add Product</a>
    
            <table class="table">
                <tr>
                	<td>Id</td>
                    <td>Name</td>
                    <td>price</td>
                    <td>Description</td>
                    <td>Action</td>
                    
                </tr>
                <c:forEach items="${product}" var="p">
                <tr>
                	<td>${p.id}</td>
                    <td>${p.name}</td>
                    <td>${p.price}</td>
                    <td>${p.description}</td>
                  <td style="white-space: nowrap; text-align: center; vertical-align: middle; padding: 5px;">
    <a href="DeleteProduct/${p.id}" style="margin-right: 15px;">
        <i class="fa-solid fa-trash fa-lg" style="color: #B197FC;"></i>
    </a>
    <a href="UpdateProduct/${p.id}">
        <i class="fa-solid fa-pen-nib fa-lg" style="color: black;"></i>
    </a>
</td>

                </tr>
                </c:forEach>
            </table>
        </div>
    </div>
   

</body>
</html>