<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<%@include file="../includes/header.jsp"%>

<style>
    /* 화면 중앙 정렬 스타일 */
    .form-container {
        display: flex;
        justify-content: center;
        align-items: flex-start; /* 수직 정렬을 위쪽으로 */
        height: 90vh; /* 화면의 90% 높이 */
        padding-top: 50px; /* 상단 여백 추가 */
    }

    .form-box {
        width: 400px; /* 폼 너비 */
        padding: 20px; /* 내부 여백 */
        background-color: #f9f9f9; /* 배경 색상 */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
        border-radius: 8px; /* 모서리 둥글게 */
        text-align: center; /* 폼 제목 중앙 정렬 */
    }

    .form-title {
        font-size: 24px; /* 제목 크기 */
        font-weight: bold; /* 제목 두껍게 */
        margin-bottom: 20px; /* 제목과 폼 필드 간격 */
        color: #333; /* 제목 색상 */
    }

    .form-box .form-group {
        margin-bottom: 15px; /* 각 필드 간격 */
    }

    .form-box button {
        width: 100%; /* 버튼 전체 너비 */
    }
</style>

<div class="form-container">
    <div class="form-box">
        <!-- 폼 제목 -->
        <div class="form-title">게시글 작성</div>
        
        <!-- 폼 시작 -->
        <form action="/board/register" method="post">
            <div class="form-group">
                <label>제목</label>
                <input class="form-control" name="title" placeholder="제목을 입력하세요">
            </div>

            <div class="form-group">
                <label>내용</label>
                <textarea class="form-control" rows="5" name="content" placeholder="내용을 입력하세요"></textarea>
            </div>

            <div class="form-group">
                <label>작성자</label>
                <!-- 세션에서 userid 값을 가져와 value에 설정 -->
                <input class="form-control" name="writer" value="<c:out value='${sessionScope.userid}'/>" readonly />
            </div> 

            <button type="submit" class="btn btn-primary">작성하기</button>
           <button type="reset" class="btn btn-secondary" onclick="location.href='/board/list2">목록으로</button>
        </form>
        <!-- 폼 종료 -->
    </div>
</div>

<%@include file="../includes/footer.jsp"%>
