<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--base href="http://demo.tecdiary.my/spos/" /-->
<title><spring:message code="categories.title"/></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="<c:url value='/resources/images/favicon.ico'/>" rel="shortcut icon"/>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrapPOS.css'/>" type="text/css" charset="utf-8">
<link rel="stylesheet" href="<c:url value='/resources/css/datatables.css'/>" type="text/css">
<link rel="stylesheet" href="<c:url value='/resources/css/dash.css'/>" type="text/css">
<link rel="stylesheet" href="<c:url value='/resources/css/non-responsive.css'/>" type="text/css">
<script src="<c:url value='/resources/js/jquery-1.7.2.min.js'/>"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.tip').tooltip();
	$('.alert').click(function(){ $(this).fadeTo(500, 0).slideUp(500, function(){ $(this).remove(); }); });
	window.setTimeout(function() { $(".alert").fadeTo(500, 0).slideUp(500, function(){ $(this).remove(); }); }, 8000);
});
</script>
</head>
<body>
    <div id="wrap">
        <jsp:include page="../navbarPOS.jsp"/>
        <div class="container">
            <h3><spring:message code="categories.container.title"/> - <spring:message code="application.name"/></h3>
            <p class="introtext"><spring:message code="categories.container.introtext"/></p>

            <table id="fileData" class="table table-striped table-bordered table-condensed table-hover" style="margin-bottom:5px;">
                <thead>
                    <tr class="active">
                        <th style="width:55px;"><spring:message code="categories.container.table.encabezado.no"/></th>
                        <th><spring:message code="categories.container.table.encabezado.name"/></th>
                        <th style="width:45px;"><spring:message code="categories.container.table.encabezado.actions"/></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="categoria" items="${listaCategoria}">
                        <tr>
                        <td>${categoria.idCategoria}</td>
                        <td>${categoria.nombre}</td>
                        <td>
                            <div class="btn-group">
                                <a href="/categoria/editar?idCategoria=${categoria.idCategoria}" class="tip btn btn-warning btn-xs" title="Update Category">
                                    <i class="glyphicon glyphicon-edit"></i>
                                </a>
                                <a href="/categoria/borrar?idCategoria=${categoria.idCategoria}"
                                   onClick="return confirm('You are going to remove this category. Press OK to proceed and Cancel to Go Back')"
                                   class="tip btn btn-danger btn-xs" title="<em>delete_category</em>">
                                    <i class="glyphicon glyphicon-trash"></i>
                                </a>
                            </div>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <p><a href="/categoria/agregar" class="btn btn-primary btn-sm"><spring:message code="categories.container.button.value"/></a></p>
        </div>
        <jsp:include page="../footerPOS.jsp"/>
    </div>
    <script type="text/javascript" src="<c:url value='/resources/js/bootstrapPOS.min.js'/>"></script>
    <script src="<c:url value='/resources/js/bootstrap-prettyfile.js'/>"></script>
    <script src="<c:url value='/resources/js/bootstrap-datepicker.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/jquery.dataTables.min.js'/>"></script>
    <script type="text/javascript" charset="utf-8" src="<c:url value='/resources/js/ZeroClipboard.js'/>"></script>
    <script type="text/javascript" charset="utf-8" src="<c:url value='/resources/js/TableTools.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/DT_bootstrap.js'/>"></script>
</body>
</html>
