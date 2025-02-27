</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Modal Structure -->
    <div class="modal fade" id="footerModal" tabindex="-1" role="dialog" aria-labelledby="footerModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="footerModalLabel"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        // JSP에서 전달된 result 값을 JavaScript 변수로 가져옴
        var result = "<c:out value='${result}'/>"; // result는 각 JSP에서 설정된 플래시 속성

        // checkModal 함수 호출
        checkModal(result);

        function checkModal(result) {
            if (result === '') {
                return; // result가 없으면 아무 동작 안 함
            }

            let modalTitle = "";
            let modalMessage = "";

            // result 값에 따라 모달 내용 변경
            if (result === 'registered') {
                modalTitle = "게시글 등록";
                modalMessage = "새 게시글이 등록되었습니다.";
            } else if (result === 'updated') {
                modalTitle = "게시글 수정";
                modalMessage = "게시글이 수정되었습니다.";
            } else if (result === 'deleted') {
                modalTitle = "게시글 삭제";
                modalMessage = "게시글이 삭제되었습니다.";
            }
            else if (result === 'loginError') {
                modalTitle = "로그인 오류";
                modalMessage = "로그인 정보가 일치하지 않습니다.";
            }
 
            // 모달 업데이트 및 표시
            if (modalTitle && modalMessage) {
                $("#footerModalLabel").text(modalTitle);
                $("#footerModal .modal-body").text(modalMessage);
                $("#footerModal").modal("show");
            }
        }
    });
    </script>

</body>

</html>
