<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴 추천 페이지</title>
    <style>
        .category-container {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin-bottom: 20px;
        }
        .category-section {
            margin-bottom: 20px;
        }
        .category-button {
            margin: 1px;
            padding: 10px;
            border: 1px solid #000;
            cursor: pointer;
            display: inline-block;
            width: 70px;
            text-align: center;
        }
        .selected {
            background-color: #007BFF;
            color: white; 
        }
        #recommendButton {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
        #videoContainer {
            margin-top: 20px;
        }
        /*선택된 메뉴 설정*/
        #recommendedMenu { 
            color:gray;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="padding-left: 150px; padding-right: 150px;">
        <div class="container-fluid">
            <a class="navbar-brand" href="./index">MOMOK.GG</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link" href="./list">메뉴추천게시판</a>
                    <a class="nav-link" href="./list2">자유게시판</a>
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">관리자</a>
                </div>
                <div class="navbar-nav ms-auto me-3">
                    <% 
                        // 세션에서 로그인 정보 확인
                        String user = (String) session.getAttribute("userid");
                        if (user != null) { 
                    %>
                        <!-- 로그인한 상태이면 로그아웃 버튼 표시 -->
                        <a class="nav-link active" href="/logout">로그아웃</a>
                    <% 
                        } else { 
                    %>
                        <!-- 로그인하지 않은 상태면 로그인 버튼 표시 -->
                        <a class="nav-link active" href="./login">로그인</a>
                    <% 
                        } 
                    %>
                </div>
            </div>
        </div>
    </nav>

    <!-- 로그아웃 처리를 위한 logout.jsp -->
    <%
        // 로그아웃 페이지 처리
        if (request.getRequestURI().contains("logout")) {
            // 세션을 무효화
            session.invalidate();
            // index 페이지로 리디렉션
            response.sendRedirect("index");
        }
    %>
</body>
</html>
