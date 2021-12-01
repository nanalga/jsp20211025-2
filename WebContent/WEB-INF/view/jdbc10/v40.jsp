<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>

  <!-- .container>.row>.col>h1{직원 검색} -->
  <div class="container">
    <div class="row">
      <div class="col">
        <h1>직원 검색</h1>
      </div>
    </div>

    <!-- .row>.col-4>form>.input-group.mb-3>input.form-control+.input-group-append>button.btn.btn-outline-primary{검색} -->
    <div class="row">
      <div class="col">
        <form action="">
          <div class="col">
            <!-- .form-group.row>label[for=select1].col-2.col-form-label+.col-10>select.form-control#select1 -->
            <div class="form-group row">
              <label for="select1" class="col-2 col-form-label">태어난 해</label>
              <div class="col-4">
                <select name="year" id="select1" class="form-control">
                  <c:forEach begin="1928" end="1969" var="year">
                    <option value="${year }">${year }</option>
                  </c:forEach>
                </select>
              </div>
              <div class="col-6">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" name="keyword" placeholder="검색어를 입력하세요">
                  <div class="input-group-append">
                    <button class="btn btn-outline-primary">검색</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>

    <!-- .row>.col>table.table>thead>tr>th*5^^tbody -->
    <div class="row">
      <div class="col">
        <table class="table">
          <thead>
            <tr>
              <th>ID</th>
              <th>LastName</th>
              <th>FirstName</th>
              <th>BirthDate</th>
              <th>Notes</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${list }" var="emp">
              <tr>
                <td>${emp.employeeID }</td>
                <td>${emp.lastName }</td>
                <td>${emp.firstName }</td>
                <td>${emp.birthDate }</td>
                <td>${emp.notes }</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
