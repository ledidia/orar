<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Helo</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script type="text/javascript">

        function valoare() {
            document.getElementById("cauta").click();
        }
    </script>
</head>
<body>
<form name="orar">
    <div><h1 align="center">ORARUL CURSURILOR</h1></div>
    <div class="aranjare">
        <table>
            <tr>
                <td width="10%">
                    <button type="submit" name="grupe" class="buton">Grupe</button>
                </td>
                <td width="10%">
                    <button type="submit" name="profesori" class="buton">Profesori</button>
                </td>
                <td width="10%">
                    <button type="submit" name="aula" class="buton">Auditorii</button>
                </td>
                <td width="60%"><h2 align="center">Universitatea de Stat „Alecu Russo” din Bălți</h2></td>
                <td><img src="univ.png" width="100px" height="70px" align="right"/></td>
            </tr>
        </table>
        <div class="aranjare1">
            <table>
                <tr>
                    <td width="80"><input type="hidden" value="${den}" name="id1"/>${den}</td>
                    <td><input type="text" width="100" name="caut"/></td>
                    <td>
                        <input type="submit" name="cauta" id="cauta" value="cauta"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <th colspan="2" >
                        <select size="6" name="tripType" class="selecto" onchange="valoare()">
                            <c:forEach var="aleg" items="${alegere}">
                                <option value="${aleg.name}">${aleg.name}</option>
                            </c:forEach>
                        </select>

                    </th>
                </tr>
                <tr>
                    <td><label>Ziua</label></td>
                    <th colspan="2">
                        <select name="ziua" class="selecto">
                           <option value="${ziua1}" selected="selected">${ziua1} </option>
                            <c:forEach var="z" items="${zi1}">
                                <option value="${z}">${z}</option>
                            </c:forEach>
                        </select>
                    </th>
                </tr>
                <tr>
                    <td><label>Saptamina</label></td>
                    <th colspan="2">
                        <select name="data12" class="selecto">
                            <option value="28.08.2017-03.09.2017" selected="selected">1(28.08.2017-03.09.2017)</option>
                            <option value="04.09.2017-10.09.2017">2(04.09.2017-10.09.2017)</option>
                            <option value="11.09.2017-17.09.2017">3 (11.09.2017-17.09.2017)</option>
                            <option value="18.09.2017-24.09.2017">4 (18.09.2017-24.09.2017)</option>
                            <option value="25.09.2017-01.10.2017">5 (25.09.2017-01.10.2017)</option>
                            <option value="02.10.2017-08.10.2017">6 (02.10.2017-08.10.2017)</option>
                            <option value="09.10.2017-15.10.2017">7 (09.10.2017-15.10.2017)</option>
                            <option value="16.10.2017-22.10.2017">8 (16.10.2017-22.10.2017)</option>
                            <option value="23.10.2017-29.10.2017">9 (23.10.2017-29.10.2017)</option>
                        </select>
                    </th>
                </tr>
            </table>

            <div>
                <table border="2">
                    <tr>
                        <td width="50" height="25"></td>
                        <td width="30" height="25" align="center">1</td>
                        <td width="30" height="25" align="center">2</td>
                        <td width="30" height="25" align="center">3</td>
                        <td width="30" height="25" align="center">4</td>
                        <td width="30" height="25" align="center">5</td>
                        <td width="30" height="25" align="center">6</td>
                        <td width="30" height="25" align="center">7</td>
                    </tr>
                    <tr >
                    <td width="50" height="25" align="center"><b>T</b></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    </tr>
                    <tr>
                    <td width="50" height="25" align="center"><b>W</b></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    </tr>
                    <tr>
                    <td width="50" height="25" align="center"><b>T</b></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    </tr>
                    <tr>
                    <td width="50" height="25" align="center"><b>F</b></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    </tr>
                    <tr>
                    <td width="50" height="25" align="center"><b>S</b></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    <td width="30" height="25"></td>
                    </tr>
                    <tr>
                        <td width="50" height="25" align="center"><b>S</b></td>
                        <td width="30" height="25"></td>
                        <td width="30" height="25"></td>
                        <td width="30" height="25"></td>
                        <td width="30" height="25"></td>
                        <td width="30" height="25"></td>
                        <td width="30" height="25"></td>
                        <td width="30" height="25"></td>
                    </tr>
                </table>
            </div>

        </div>
        <div class="aranjare2">
            <table border="1" width="80%">
                <tr>
                    <td width="50" align="center" height="50px"><b>8:00<br> 9:30</b></td>
                    <td width="90%"></td>
                </tr>
                <tr>
                    <td width="50" align="center" height="50px"><b>9:40<br> 11:10</b></td>
                    <td width="90%"></td>
                </tr>
                <tr>
                    <td width="50" align="center" height="50px"><b>11:30<br> 13:00</b></td>
                    <td width="90%"></td>
                </tr>
                <tr>
                    <td width="50" align="center" height="50px"><b>13:10<br> 14:40</b></td>
                    <td width="90%"></td>
                </tr>
                <tr>
                    <td width="50" align="center" height="50px"><b>14:50<br> 16:20</b></td>
                    <td width="90%"></td>
                </tr>
                <tr>
                    <td width="50" align="center" height="50px"><b>16:30<br> 18:00</b></td>
                    <td width="90%"></td>
                </tr>
                <tr>
                    <td width="50" align="center" height="50px"><b>18:10<br> 19:40</b></td>
                    <td width="90%"></td>
                </tr>
            </table>
        </div>

    </div>
    <table border="1" width="200px" height="40px">
        <tr>
            <c:forEach items="${p1}" var="p">
                <c:set var = "s" scope = "session"  value="${p.key}"/>
                <c:set var = "n" scope = "session"  value="${p.value}"/>
                <c:if test="${s == 'Monday'}">
                    <td width="50" height="25" align="center"><b>T</b></td>
                    <td width="30" height="25"><c:if test="${n.nrlectiei == 1}">${n.tipulLectiei}</c:if></td>
                    <td width="30" height="25"><c:if test="${n.nrlectiei == 2}">${n.tipulLectiei}</c:if></td>
                    <td width="30" height="25"><c:if test="${n.nrlectiei == 3}">${n.tipulLectiei}</c:if></td>
                    <td width="30" height="25"><c:if test="${n.nrlectiei == 4}">${n.tipulLectiei}</c:if></td>
                    <td width="30" height="25"><c:if test="${n.nrlectiei == '5'}">${n.tipulLectiei}</c:if></td>
                    <td width="30" height="25"><c:if test="${n.nrlectiei == 6}">${n.tipulLectiei}</c:if></td>
                    <td width="30" height="25"><c:if test="${n.nrlectiei == 7}">${n.tipulLectiei}</c:if></td>
                </c:if>
            </c:forEach>
        </tr>
    </table>


</form>

</body>
</html>

