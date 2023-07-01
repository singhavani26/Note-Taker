<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add notes</title>
    <%@include file="all__js_css.jsp"%>
    

</head>
<div class="container-fluid p-0 m-0">
      <%@include file="navbar.jsp"%>
      <br>
      <h1>Hey! add a page here</h1>
      <br>
      <!-- this is a form -->
      <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note title</label>
    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here"/>
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" required id="content" placeholder="type here" class="form-control
    style="height:300px;"></textarea>
  </div>
  <div class="container text-center">
    <button type="submit" class="btn btn-primary">Add</button></div>
</form>
    </div>
<body>

</body>
</html>