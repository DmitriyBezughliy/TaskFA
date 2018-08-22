<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <<title>Prog.kiev.ua</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<style>

</style>
</head>
<body>
<div class="container" style="margin-top:10px">
    <h1 style="text-align: center">PHOTOS:</h1>
    <form action="/deleteselect" enctype="multipart/form-data" method="POST">
        <table class="table table-bordered">

            <thead>
            <tr>
                <th class="col-1">Delete</th>
                <th class="col-2">Photo id</th>
                <th class="col-3">Photo</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${photos}" var="photo">
                <tr>
                    <td>
                        <input type="checkbox" class="big-checkbox" name="photos[]" value="${photo}">
                    </td>
                    <td>
                        <a href="/photo/${photo}">${photo}</a>
                    </td>
                    <td>
                        <img ootstra src="/photo/${photo}" width=" 20%" height="20%"/>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <input type="submit" value="Delete select photo">
    </form>
</div>
</body>
</html>