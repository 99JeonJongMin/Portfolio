<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <title>회원가입</title>
    <meta property="og:title" content="Page1 - Euphoric Live Albatross" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta property="twitter:card" content="summary_large_image" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style data-tag="reset-style-sheet">
      html {  line-height: 1.15;}body {  margin: 0;}* {  box-sizing: border-box;  border-width: 0;  border-style: solid;}p,li,ul,pre,div,h1,h2,h3,h4,h5,h6,figure,blockquote,figcaption {  margin: 0;  padding: 0;}button {  background-color: transparent;}button,input,optgroup,select,textarea {  font-family: inherit;  font-size: 100%;  line-height: 1.15;  margin: 0;}button,select {  text-transform: none;}button,[type="button"],[type="reset"],[type="submit"] {  -webkit-appearance: button;}button::-moz-focus-inner,[type="button"]::-moz-focus-inner,[type="reset"]::-moz-focus-inner,[type="submit"]::-moz-focus-inner {  border-style: none;  padding: 0;}button:-moz-focus,[type="button"]:-moz-focus,[type="reset"]:-moz-focus,[type="submit"]:-moz-focus {  outline: 1px dotted ButtonText;}a {  color: inherit;  text-decoration: inherit;}input {  padding: 2px 4px;}img {  display: block;}html { scroll-behavior: smooth  }
    </style>
    <style data-tag="default-style-sheet">
      html {
        font-family: Inter;
        font-size: 16px;
      }

      body {
        font-weight: 400;
        font-style:normal;
        text-decoration: none;
        text-transform: none;
        letter-spacing: normal;
        line-height: 1.15;
        color: var(--dl-color-theme-neutral-dark);
        background: var(--dl-color-theme-neutral-light);

        fill: var(--dl-color-theme-neutral-dark);
      }
    </style>
    <link rel="stylesheet" href="https://unpkg.com/animate.css@4.1.1/animate.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" data-tag="font" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=STIX+Two+Text:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&amp;display=swap" data-tag="font" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" data-tag="font" />
    <link rel="stylesheet" href="https://unpkg.com/@teleporthq/teleport-custom-scripts/dist/style.css" />
  </head>
  <body>
  <%@include file="/WEB-INF/views/includes/header.jsp"%>
    <link rel="stylesheet" href="/resources/css/style.css" />
    <div>
      <link href="./resources/css/sign.css" rel="stylesheet" />

      <div class="page1-container">
        <contact-form3-wrapper class="contact-form3-wrapper" rootclassname="contact-form3undefined">
          <!--ContactForm3 component-->
          <div class="contact-form3-contact9 thq-section-padding contact-form3root-class-name">
            <div class="contact-form3-max-width thq-flex-row thq-section-max-width">
              <img
                alt="Image1"
                src="https://images.unsplash.com/photo-1574169208507-84376144848b?ixid=M3w5MTMyMXwwfDF8c2VhcmNofDN8fGFic3RyYWN0fGVufDB8fHx8MTcxMDg3MDkzMHww&amp;ixlib=rb-4.0.3&amp;w=700"
                class="contact-form3-image1 thq-img-ratio-4-3"
              />
              <div class="contact-form3-content1 thq-flex-column">
                <div class="contact-form3-section-title thq-card">
                  <div class="contact-form3-content2">
                    <h2>
                      <fragment class="page1-fragment2">
                        <span class="page1-text2 thq-heading-2">회원가입</span>
                      </fragment>
                    </h2>
                  </div>
                </div>
                <!-- 회원가입 폼 -->
                <form class="contact-form3-form thq-card" action="/memreg" method="post"> <!-- action을 '/memreg'으로 설정 -->
                  <div class="contact-form3-input1">
                    <label for="contact-form-3-name" class="thq-body-small">
                      아이디
                    </label>
                    <input
                      type="text"
                      id="contact-form-3-name"
                      name="userid" 
                      placeholder="아이디"
                      class="thq-input"
                    />
                  </div>
                  
                  <div class="contact-form3-input1">
                    <label for="contact-form-3-name" class="thq-body-small">
                      이름
                    </label>
                     <input
                      type="text"
                      id="contact-form-3-name"
                      name="name" 
                      placeholder="이름"
                      class="thq-input"
                    />
                  </div>
                  
                  <div class="contact-form3-input2">
                    <label for="contact-form-3-email" class="thq-body-small">
                      이메일
                    </label>
                    <input
                      type="email"
                      id="contact-form-3-email"
                      name="email" 
                      required="true"
                      placeholder="이메일"
                      class="thq-input"
                    />
                  </div>
                  <div class="contact-form3-input3">
                    <label for="contact-form-3-name" class="thq-body-small">
                      비밀번호
                    </label>
                    <input
                      type="password"
                      id="contact-form-3-password"
                      name="passwd" 
                      placeholder="비밀번호"
                      class="thq-input"
                    />
                  </div>
                  <button type="submit" class="contact-form3-button thq-button-filled">
                    <span>
                      <fragment class="page1-fragment1">
                        <span class="page1-text1 thq-body-small">회원가입</span>
                      </fragment>
                    </span>
                  </button>
                </form>
              </div>
            </div>
          </div>
        </contact-form3-wrapper>
      </div>
    </div>
    <script defer="" src="https://unpkg.com/@teleporthq/teleport-custom-scripts"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  </body>
</html>
