<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/maincss.css" rel="stylesheet">
<link href="/web/shop/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#list").click(function() {
			document.location.href = 'noticeList.do';
		});
		$("button#del").click(function() {
			var n_no=$("button#del").val();
			var confirm_test = confirm("정말로 삭제하시겠습니까?");
			if (confirm_test == true) {
				alert("삭제되었습니다.");
				document.location.href = 'noticeDelete.do?n_no=' + n_no;
			}
		});
	});
</script>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="wrap">
		<div class="mainWrap">
			<div class="mainContents">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">NOTICE</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-bordered">
								<colgroup>
									<col width="100" />
									<col width="900" />
								</colgroup>
								<tr>
									<td class="text-center">제목</td>
									<td>
										<form role="form" class="form-inline">
											<div class="form-group">
												<p>${noticeInfo.n_title}</p>
											</div>
										</form>
									</td>
									<td><p align="center">${noticeInfo.n_regdate}</p></td>
								</tr>
								<tr>
									<td colspan="3" style="padding-top: 50px; padding-bottom: 50px;"><p align="center">${noticeInfo.n_contents}</p></td>
								</tr>
							</table>
						</div>
						<form role="form" class="form-inline pull-right">
							<c:choose>
								<c:when test="${sessionScope.id eq 'Admin'}">
									<button type="button" class="btn btn-default btn-s"
										onclick="location.href='noticeMod.do?n_no=${noticeInfo.n_no}&job=mod'">수정</button>
									<button type="button" class="btn btn-default btn-s" id="del">삭제</button>
								</c:when>
							</c:choose>
							<button type="button" class="btn btn-default btn-s" id="list">목록</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>

