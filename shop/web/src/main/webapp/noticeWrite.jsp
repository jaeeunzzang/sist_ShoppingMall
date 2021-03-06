<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#save").click(
				function() {
					if ($("input#new_title").val() == 0
							|| $("textarea#new_contents").val() == 0) {
						alert("data check");
						return false;
					}
					$("form#newFrm").submit();
				});

		$("button#mod").click(
				function() {
					if ($("input#mod_title").val() == 0
							|| $("textarea#mod_contents").val() == 0) {
						alert("data check");
						return false;
					}
					$("form#modFrm").submit();
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
							<c:choose>
								<c:when test="${job eq 'new'}">
									<form action="noticeInsert.do" method="post" id="newFrm">
										<table class="table table-bordered">
											<colgroup>
												<col width="100" />
												<col width="900" />
											</colgroup>
											<tr>
												<td class="text-center">제목</td>
												<td>
													<div class="form-group">
														<input type="text" name="n_title" id="new_title" class="form-control"
															placeholder="제목을 입력해주세요">
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2"><textarea rows="12" class="form-control text-center"
														placeholder="내용을 입력해주세요" name="n_contents" id="new_contents"></textarea></td>
											</tr>
										</table>
										<button type="button" class="btn btn-default btn-s" id="save">등록</button>
										<a href="noticeList.do">
											<button type="button" class="btn btn-default btn-s">목록</button>
										</a>
									</form>
								</c:when>
								<c:otherwise>
									<form action="noticeUpdate.do" method="post" id="modFrm">
										<table class="table table-bordered">
											<colgroup>
												<col width="100" />
												<col width="900" />
											</colgroup>
											<tr>
												<td class="text-center">제목</td>
												<td>
													<div class="form-group">
														<input type="text" class="form-control" name="n_title" id="mod_title"
															value="${noticeMod.n_title}"> <input type="hidden"
															name="n_no" value="${noticeMod.n_no}">
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2"><textarea rows="12" class="form-control text-center"
														name="n_contents" id="mod_contents">${noticeMod.n_contents}</textarea></td>
											</tr>
										</table>
										<div align="right">
											<button type="button" class="btn btn-default btn-s" id="mod">수정</button>
											<a href="noticeList.do">
												<button type="button" class="btn btn-default btn-s">목록</button>
											</a>
										</div>
									</form>
								</c:otherwise>
							</c:choose>
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

