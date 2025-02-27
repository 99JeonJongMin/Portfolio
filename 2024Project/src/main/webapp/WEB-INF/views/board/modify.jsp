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
        
        <!-- 게시글 수정 폼 -->
        <form role="form" action="/board/modify" method="post">
            <div class="form-group">
                <label>제목</label>
                <input class="form-control" name="title" value="<c:out value='${board.title}'/>">
            </div>

            <div class="form-group">
                <label>내용</label>
                <textarea class="form-control" rows="5" name="content"><c:out value="${board.content}"/></textarea>
            </div>

            <div class="form-group">
                <label>작성자</label>
                <input class="form-control" name="writer" value="<c:out value='${board.writer}'/>" readonly>
            </div>

            <input type="hidden" name="bno" value="<c:out value='${board.bno}'/>"> <!-- 게시글 번호를 hidden 필드로 전달 -->

            <button type="submit" class="btn btn-primary">수정</button> <!-- 수정 버튼 -->
        </form>
        
        <!-- 게시글 삭제 폼 -->
        <form action="/board/remove" method="post" style="display:inline;">
            <input type="hidden" name="bno" value="<c:out value='${board.bno}'/>"> <!-- 게시글 번호를 hidden 필드로 전달 -->
            <button type="submit" class="btn btn-danger">삭제</button> <!-- 삭제 버튼 -->
        </form>

         <button type="button" class="btn btn-secondary" onclick="window.location.href='list2'">목록으로</button>
    </div>
</div>

<%@include file="../includes/footer.jsp"%>
