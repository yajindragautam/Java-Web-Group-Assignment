
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="fragments/header.jsp"%>

<c:if test="${userData != null}">
    <c:redirect url="/dashboard" />
</c:if>
<div class="wrapper">
    <div class="container">
        <div class="card" data-aos="flip-left" data-aos-duration="1000">
            <div class="heading text-center mb-5">
                <i class="fa-solid fa-fingerprint fa-2x"></i>
                <h3 class="text-uppercase">Login Application</h3>
            </div>
            <span class="<%=request.getAttribute("error-msg") != null ? "error-message" : ""%>">
                <%=request.getAttribute("error-msg") != null ? request.getAttribute("error-msg") : ""%>
            </span>
            <form class="form" action="login" method="post">

                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-user"></i></span>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-key"></i></span>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password">
                </div>
                <button type="submit" class="btn mt-4">Login</button>
            </form>
        </div>
    </div>
</div>
<%@include file="fragments/footer.jsp"%>