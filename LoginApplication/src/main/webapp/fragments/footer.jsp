<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2/21/2022
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
	<%@include file="../assets/vendor/jquery/jquery-3.2.1.min.js"%>
	<%@include file="../assets/vendor/bootstrap/js/popper.js"%>
	<%@include file="../assets/vendor/select2/select2.min.js"%>
	<%@include file="../assets/vendor/tilt/tilt.jquery.min.js"%>
	<%@include file="../assets/js/main.js"%>
</script>
<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
</script>

<script>
    AOS.init();
</script>
</body>
</html>
