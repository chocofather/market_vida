<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>   
<link rel="stylesheet" href="${path}/resources/css/footer.css" />
<footer class="footer">
            <div class="menu">
                <ul>
                    <li><a href="./main">홈으로</a></li>
                    <li><a href="#">마켓정보</a></li>
                    <li><a href="#">고객센터</a></li>
                    <li><a href="#">공지사항</a></li>
                </ul>
            </div>
    
            <div class="copyright">
                <hr>
                <p id="copyright-text">&copy; MarketVida Inc. All Rights Reserved</p>
            </div>
            <div class="sns">
                <div class="sns_img">
                    <a href="https://www.facebook.com/"><img src="${path}/resources/img/facebook.png" alt="페이스북"></a>
                    <a href="https://www.instagram.com/"><img src="${path}/resources/img/insta.png"></a>
                    <a href="https://twitter.com/"><img src="${path}/resources/img/twitter.png"></a>
                </div>
            </div>
        </footer>