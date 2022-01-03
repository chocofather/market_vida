<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="../resources/css/footer.css" />
	<div class="footer">
        <div class="menu">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Info</a></li>
                <li><a href="#">FAQs</a></li>
                <li><a href="#">Support</a></li>
            </ul>
        </div>
        <div class="copyright">
            <hr>
            <jsp:useBean id="year" class="java.util.Date"/>
            <p id="copyright-text">&copy; <fmt:formatDate value="${year}" pattern="yyyy"/> MarketVida Inc. All Rights Reserved</p>
        </div>
        <div class="sns">
            <div class="sns_img">
                <a href="https://www.facebook.com/"><img src="../resources/img/facebook.png" alt="페이스북"></a>
                <a href="https://www.instagram.com/"><img src="../resources/img/insta.png" alt="인스타그램"></a>
                <a href="https://twitter.com/"><img src="../resources/img/twitter.png" alt="트위터"></a>
            </div>
        </div>
    </div>