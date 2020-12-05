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
									<td>${qInfo.q_fileName}</td>
								</tr>

							</table>
						</div>
						<form role="form" class="form-inline pull-right">
							<a href="qnaModify.jsp">
								<button type="button" class="btn btn-default btn-s">수정</button>
							</a>
							<a href="qnaList.do">
								<button type="button" class="btn btn-default btn-s">목록</button>
							</a>
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

