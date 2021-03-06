<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NO NAME REVIEW</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/kfonts2.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">
<style type="text/css">
textarea.form-control:read-only {
	background-color: white;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#list").click(function() {
			document.location.href = 'reviewList.do';
		});
		$("button#del").click(function() {
			var r_no = $("button#del").val();
			var confirm_test = confirm("정말로 삭제하시겠습니까?");
			if (confirm_test == true) {
				alert("삭제되었습니다.");
				document.location.href = 'reviewDelete.do?r_no=' + r_no;
			}
		});
		$("button#commentsMod").click(function() {
			$("form[name='commentsFrm']").submit();
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
						<h4 class="panel-title">REVIEW</h4>
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
									<td>${reviewInfo.r_title}</td>
								</tr>
								<tr>
									<td class="text-center">이름</td>
									<td>${reviewInfo.m_id}</td>
								</tr>
								<tr>
									<td colspan="2">
										<div class="row">
											<div class="col-md-4">
												<img src="upload/${reviewInfo.r_fileName}" class="img-responsive" />
											</div>
											<div class="col-md-8">
												<textarea rows="19" class="form-control" readonly="readonly">${reviewInfo.r_contents}</textarea>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td class="text-center">첨부파일</td>
									<td>${reviewInfo.r_fileName}</td>
								</tr>
							</table>
						</div>
						<div align="right">
							<c:choose>
								<c:when test="${sessionScope.id eq reviewInfo.m_id}">
									<button type="button" class="btn btn-default btn-s"
										onclick="location.href='reviewMod.do?r_no=${reviewInfo.r_no}&job=mod'">수정</button>
									<button type="button" class="btn btn-default btn-s" id="del" value="${reviewInfo.r_no}">삭제</button>
								</c:when>
							</c:choose>
							<button type="button" class="btn btn-default btn-s" id="list">목록</button>
						</div>

						<div class="panel-heading">
							<h4 class="panel-title">COMMENTS</h4>
						</div>
						<div class="table-responsive">
							<form action="reviewCommentsUpdate.do?r_no=${reviewInfo.r_no}" name="commentsFrm"
								method="post">
								<table class="table table-bordered">
									<colgroup>
										<col width="100" />
										<col width="900" />
									</colgroup>
									<tr>
										<td><img src="img/re.png"> Admin</td>
										<c:choose>
											<c:when test="${sessionScope.id eq 'Admin'}">
												<td><input type="text" name="r_comments" value="${reviewInfo.r_comments}"></td>
											</c:when>
											<c:otherwise>
												<td><input type="text" value="${reviewInfo.r_comments}"
													style="border-style: none; background: white;" disabled="disabled"></td>
											</c:otherwise>
										</c:choose>
									</tr>
								</table>
							</form>
							<c:if test="${sessionScope.id eq 'Admin'}">
								<div align="right">
									<button type="button" class="btn btn-default btn-s" id="commentsMod">답글수정</button>
								</div>
							</c:if>
						</div>
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

