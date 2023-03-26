<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="fragments/header.jsp"%>

<c:if test="${userData == null}">
    <c:redirect url="/login" />
</c:if>

<div class="wrapper">
    <div class="container">
        <div class="card" data-aos="flip-left">
            <h1 class="text-dark text-center mb-4">Greetings, <c:out value="${userData.firstName}" /> <c:out value="${userData.lastName}" /></h1>
            <a href="${pageContext.request.contextPath}/logout" class="btn">Logout</a>
        </div>
    </div>
</div>

<%@include file="fragments/footer.jsp"%>
