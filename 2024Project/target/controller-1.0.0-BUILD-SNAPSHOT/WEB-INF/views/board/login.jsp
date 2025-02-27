<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>로그인</title>
    <meta property="og:title" content="Euphoric Live Albatross" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta property="twitter:card" content="summary_large_image" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <style>
      html {
        font-family: 'Inter', sans-serif;
        font-size: 16px;
      }

      body {
        font-weight: 400;
        line-height: 1.15;
        background: #f8f9fa;
      }

      .navbar {
        padding-left: 150px;
        padding-right: 150px;
      }

      .navbar-brand {
        font-weight: bold;
        font-size: 1.5rem;
      }

      .navbar-nav .nav-link {
        font-size: 1.2rem;
        padding-left: 20px;
        padding-right: 20px;
      }

      .navbar-nav .ms-auto .nav-link {
        font-size: 1.2rem;
        color: #007bff;
      }

      .navbar-nav .ms-auto .nav-link.active {
        font-weight: bold;
      }

      .sign-in9-form {
        margin-top: 20px;
      }

      .sign-in9-form input {
        margin-bottom: 15px;
        padding: 10px;
        width: 100%;
        border: 1px solid #ced4da;
        border-radius: 5px;
      }

      .sign-in9-form button {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 1.1rem;
        cursor: pointer;
      }

      .sign-in9-form button:hover {
        background-color: #0056b3;
      }

      .sign-in9-divider1 {
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 20px 0;
      }

      .sign-in9-divider2, .sign-in9-divider3 {
        flex-grow: 1;
        height: 1px;
        background-color: #ced4da;
      }

      .sign-in9-link2 {
        text-align: center;
        font-size: 1rem;
        color: #007bff;
        text-decoration: none;
      }

      .sign-in9-link2:hover {
        text-decoration: underline;
      }

      .sign-in9-container7 {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
      }

      .sign-in9-button2, .sign-in9-button3 {
        width: 48%;
        padding: 10px;
        background-color: transparent;
        border: 1px solid #ced4da;
        border-radius: 5px;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1rem;
      }

      .sign-in9-button2:hover, .sign-in9-button3:hover {
        background-color: #f1f1f1;
      }

      .sign-in9-button2 svg, .sign-in9-button3 svg {
        width: 20px;
        margin-right: 10px;
      }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="index">MOMOK.GG</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-link" href="./list">메뉴추천게시판</a>
            <a class="nav-link" href="./list">자유게시판</a>
            <a class="nav-link disabled" href="login" tabindex="-1" aria-disabled="true">관리자</a>
          </div>
          <div class="navbar-nav ms-auto">
            <a class="nav-link active" aria-current="page" href="login">로그인</a>
          </div>
        </div>
      </div>
    </nav>

    <div class="container mt-5">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="card shadow-sm">
            <div class="card-body">
              <h2 class="text-center mb-4">로그인</h2>
              <form class="sign-in9-form" action="/login" method="post">
			    <div class="mb-3">
			        <label for="userid" class="form-label">아이디</label>
			        <input type="text" id="userid" name="userid" required placeholder="아이디" class="form-control" /> <!-- type 변경 -->
			    </div>
			    <div class="mb-3">
			        <label for="password" class="form-label">비밀번호</label>
			        <input type="password" id="passwd" name="passwd" required placeholder="비밀번호" class="form-control" />
			        <a href="https://teleporthq.io/" target="_blank" class="form-text">비밀번호를 잊으셨나요?</a>
			    </div>
			    <button type="submit" class="btn btn-primary">로그인</button>
			  </form>

              <div class="sign-in9-divider1">
                <div class="sign-in9-divider2"></div>
                <span>OR</span>
                <div class="sign-in9-divider3"></div>
              </div>
              <a href="./register" class="sign-in9-link2">회원가입</a>
              <div class="sign-in9-container7">
                <button class="sign-in9-button2">
                  <svg viewBox="0 0 877.7142857142857 1024">
                    <path d="M713.143 73.143c90.857 0 164.571 73.714 164.571 164.571v548.571c0 90.857-73.714 164.571-164.571 164.571h-107.429v-340h113.714l17.143-132.571h-130.857v-84.571c0-38.286 10.286-64 65.714-64l69.714-0.571v-118.286c-12-1.714-53.714-5.143-101.714-5.143-101.143 0-170.857 61.714-170.857 174.857v97.714h-114.286v132.571h114.286v340h-304c-90.857 0-164.571-73.714-164.571-164.571v-548.571c0-90.857 73.714-164.571 164.571-164.571h548.571z"></path>
                  </svg>
                  페이스북으로 로그인하기
                </button>
                <button class="sign-in9-button3">
                  <svg viewBox="0 0 860.0137142857142 1024">
                    <path d="M438.857 449.143h414.286c4 22.286 6.857 44 6.857 73.143 0 250.286-168 428.571-421.143 428.571-242.857 0-438.857-196-438.857-438.857s196-438.857 438.857-438.857c118.286 0 217.714 43.429 294.286 114.857l-119.429 114.857c-32.571-31.429-89.714-68-174.857-68-149.714 0-272 124-272 277.143s122.286 277.143 272 277.143c173.714 0 238.857-124.571 249.143-189.143h-249.143v-150.857z"></path>
                  </svg>
                  구글계정으로 로그인하기
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div><script>
    document.addEventListener("DOMContentLoaded", function () {
        var errorMessage = "${error}";

        if (errorMessage) {
            // alert로 표시
            alert(errorMessage);

            // 또는 모달로 표시
            showErrorModal(errorMessage);
        }

        function showErrorModal(message) {
            const modalTitle = "로그인 실패";
            const modalBody = message;

            // 모달 내용 업데이트
            document.getElementById("footerModalLabel").innerText = modalTitle;
            document.querySelector("#footerModal .modal-body").innerText = modalBody;

            // 모달 표시
            const modal = new bootstrap.Modal(document.getElementById("footerModal"));
            modal.show();
        }
    });
</script>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
