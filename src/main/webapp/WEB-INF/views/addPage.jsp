<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="./head.jsp" %>
  <style>
        body {
            background-color: #e9ecef;
        }
        .form-container {
            width: 500px;
            height: 490px;
            margin: auto;
            margin-top: 10vh;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
    </style>
</head>
<body > <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="form-container">
            <h2 class="mb-4 text-center">Product Form</h2>
            <form action="saveProduct" method="post">
                
                <div class="mb-3">
                    <label for="name" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="name"
                    placeholder="Enter product"
                     name="name" required>
                </div>
                
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" 
                    name="description" 
                    placeholder="Enter product Description details"
                    rows="5" required></textarea>
                </div>
                
                <div class="mb-3">
                    <label for="price" class="form-label">Price</label>
                    <input type="number" class="form-control" 
                    placeholder="Enter Product id"
                    id="price" name="price" required>
                </div>
                
                <div class="d-flex gap-3">
                  <button type="submit" class="btn btn-primary w-50">Submit</button>
                 
                 <a href="${pageContext.request.contextPath}/"
                  class="btn btn-outline-danger">Back</a>
                     </div>
            </form>
        </div>
    </div>
</body>
</html>