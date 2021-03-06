<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NO NAME QNA</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/kfonts2.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/shop/css/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#list").click(function() {
			document.location.href = 'qnaList.do';
		});
		$("button#del").click(function() {
			var q_no = $("button#del").val();
			var confirm_test = confirm("정말로 삭제하시겠습니까?");
			if (confirm_test == true) {
				alert("삭제되었습니다.");
				document.location.href = 'qnaDelete.do?q_no=' + q_no;
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
						<h4 class="panel-title">Q&A</h4>
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
											<div class="form-group">${qInfo.q_title}</div>
										</form>
									</td>
								</tr>
								<tr>
									<td class="text-center">이름</td>
									<td>${qInfo.m_id}</td>
								</tr>
								<tr>
									<td colspan="2"><textarea rows="12" class="form-control" readonly="readonly"
											style="background: white;">${qInfo.q_contents}</textarea></td>
								</tr>
								<tr>
									<td class="text-center">첨부파일</td>
									<td>${qInfo.p_fileName}</td>
								</tr>

							</table>
						</div>
						<form role="form" class="form-inline pull-right">
							<c:choose>
								<c:when test="${sessionScope.id eq qInfo.m_id}">
									<button type="button" class="btn btn-default btn-s"
										onclick="location.href='qnaMod.do?q_no=${qInfo.q_no}&job=mod'">수정</button>
									<button type="button" class="btn btn-default btn-s" id="del" value="${qInfo.q_no}">삭제</button>
								</c:when>
							</c:choose>
							<a href="qnaList.do">
								<button type="button" class="btn btn-default btn-s">목록</button>
							</a>
							<c:if test="${sessionScope.id eq 'Admin'}">
								<a href="qnaAdminWrite.do?q_no=${qInfo.q_no}">
									<button type="button" class="btn btn-default btn-s">답글달기</button>
								</a>
							</c:if>
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

