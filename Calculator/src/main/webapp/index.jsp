<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Calculator</title>
    <style>
        <%@include file="assets/style.css"%>
    </style>
</head>
<body>
    <div class="box">
        <form action="calculator" name="calculate" method="post">
            <div class="display">
                <input readonly type="text" name="display" value="${result}" />
            </div>
            <div class="btns">
                <span class="btn" onclick="calculate.display.value+='7'">7</span>
                <span class="btn" onclick="calculate.display.value+='8'">8</span>
                <span class="btn" onclick="calculate.display.value+='9'">9</span>
                <span class="sbtn" onclick="calculate.display.value+='*'">*</span>
                <span class="btn" onclick="calculate.display.value+='4'">4</span>
                <span class="btn" onclick="calculate.display.value+='5'">5</span>
                <span class="btn" onclick="calculate.display.value+='6'">6</span>
                <span class="sbtn" onclick="calculate.display.value+='-'">-</span>
                <span class="btn" onclick="calculate.display.value+='1'">1</span>
                <span class="btn" onclick="calculate.display.value+='2'">2</span>
                <span class="btn" onclick="calculate.display.value+='3'">3</span>
                <span class="sbtn" onclick="calculate.display.value+='+'">+</span>
                <span  onclick="calculate.display.value=''" id="clear">C</span>
                <span class="btn" onclick="calculate.display.value+='0'">0</span>
                <span class="sbtn" onclick="calculate.display.value+='/'">/</span>
                <input readonly type="submit" value="=" id="eqbtn"/>
            </div>
        </form>

    </div>
</body>
</html>
