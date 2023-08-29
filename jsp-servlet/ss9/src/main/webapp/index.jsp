<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<form action="/discount" method="post">
  <label>Product Description </label>
  <input type="text" name="description" value="${description}">
  <label>List Price </label>
  <input type="text" name="price" value="${price}">
  <label> Discount Percent</label>
  <input type="text" name="percent" value="${percent}">
  <button type="submit">Result</button>

</form>
</body>
</html>