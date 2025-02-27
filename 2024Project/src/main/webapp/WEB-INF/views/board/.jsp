<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 		
	<%@include file="../includes/header.jsp"
	 	 %>
		
         <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">자유게시판</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            자유로운 주제로 이야기를 나눠보세요.
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                           <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>번호</th>
                                        <th>제목</th>
                                        <th>작성자</th>
                                        <th>날짜</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   
                                    <c:forEach var="board" items="${list}">
                                     <tr class="odd gradeX">
                                        <td><c:out value="${board.bno}"/></td>
                                        <td><a href="/board/get?bno?="<c:out value="${board.bno}"/>><c:out value="${board.title}"/></a></td>
                                        <td><c:out value="${board.writer}"/></td>
                                        <td><c:out value="${board.regdate}"/></td>
                                        </c:forEach>
                                    </tr>
                                   
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
        </div>
        <!-- /#page-wrapper -->
        
        
       
        <!-- The Modal -->
        
			<div class="modal fade" id="myModal">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <!-- Modal Header -->
			      <div class="modal-header">
			        <h4 class="modal-title">Modal Heading</h4>
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			      </div>
			      <!-- Modal body -->
			      <div class="modal-body">
			        Modal body..
			      </div>
			      <!-- Modal footer -->
			      <div class="modal-footer">
			        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			<script type="text/javascript">
			$(document).ready(function(){
			var result = '<c:out value="${result}"/>';
			
			checkModal(result);
			
			function checkModal(result){
			
			if(result ===''){ 
				return;
			}else if(result ==='registered'){
			$(".modal-title").html("게시글 등록");
			$(".modal-body").html("새 게시글이 등록되었습니다.");
				$("#myModal").modal("show");
			}
			}
			});

</script>

        
<%@include file="../includes/footer.jsp"%>

    