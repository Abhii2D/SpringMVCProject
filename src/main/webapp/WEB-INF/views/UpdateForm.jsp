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
    width: min(90%, 500px); /* Maximum width of 500px but adapts to smaller screens */
    margin: 5vh auto; /* Adds margin on all sides */
    padding: 20px;
    background: #f8f9fa;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    gap: 15px; /* Adds space between form elements */
}

    </style>
</head>
<body > <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="form-container">
            <h2 class="mb-4 text-center">Change Product Details</h2>
           <form action="${pageContext.request.contextPath}/saveProduct" method="post">
                <div class="mb-3">
                    <label for="id" class="form-label">Product ID :</label>
                    <input type="text" class="form-control" id="id"
                    placeholder="Product ID : "
                    value="${productupdate.id}"
                     name="id" required>
                </div>
                
                
                <div class="mb-3">
                    <label for="name" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="name"
                    placeholder="Enter product"
                    value="${productupdate.name}"
                     name="name" required>
                </div>
                
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" 
                    name="description" 
                    placeholder="Enter product Description details" 
                    rows="5" required>${productupdate.description}</textarea>
                </div>
                
                <div class="mb-3">
                    <label for="price" class="form-label">Price</label>
                    <input type="number" class="form-control" 
                    placeholder="Enter Product id"
                    value="${productupdate.price}"
                    id="price" name="price" required>
                </div>
                
                <div class="d-flex gap-3">
                  <button type="submit" class="btn btn-primary w-50">Update</button>
                 
                 <a href="${pageContext.request.contextPath}/"
                  class="btn btn-outline-danger">back</a>
                     </div>
            </form>
        </div>
    </div>
</body>
</html>