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
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#save").click(
				//저장버튼 클릭하면 수행되는 함수
				function() {
					if ($("input[name='q_title']").val.length == 0
							|| $("input[name='q_contents']").val.length == 0) {
						alert("제목과 내용을 입력해주세요");
						return false;
					} //if
					$("form#newFrm").submit();
				});
		$("button#mod").click(function() {

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
					<!-- 새글 작성할때 -->
					<c:choose>
						<c:when test="${job ne 'mod'}">
							<div class="panel-body">
								<form role="form" class="form-inline" action="qnaReplyInsert.do" id="newFrm" method="post">
									<div class="table-responsive">
										<table class="table table-bordered">
											<colgroup>
												<col width="100" />
												<col width="900" />
											</colgroup>
											<tr>
												<td class="text-center">제목</td>
												<td>
													<div class="form-group">
														<input type="text" class="form-control" name="q_title" placeholder="제목을 입력해주세요"
															style="width: 945px"> <input type="hidden" name="state" value="${state}">
														<input type="hidden" name="q_pnum" value="${q_no}">
													</div>
												</td>
											</tr>
											<tr>
												<td class="text-center">이름</td>
												<td><input type="text" class="form-control" name="m_id" readonly="readonly"
													value="${sessionScope.id}" style="width: 160px" /></td>
											</tr>
											<tr>
												<td colspan="2"><textarea rows="12" class="form-control" name="q_contents"
														placeholder="내용을 입력해주세요"></textarea></td>
											</tr>

											<tr>
												<td class="text-center">비밀글설정</td>
												<td><label class="radio-inline"> <input type="radio" name="secret"
														id="public" value="public" checked>공개글
												</label> <label class="radio-inline"> <input type="radio" name="secret" id="private"
														value="private">비밀글
												</label></td>
											</tr>
										</table>
									</div>
								</form>
								<div align="right">
									<button type="button" id="save" class="btn btn-default btn-s">등록</button>
									<a href="qnaList.do">
										<button type="button" class="btn btn-default btn-s">목록</button>
									</a>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="panel-body">
								<form role="form" class="form-inline" action="/web/qnaUpdate.do" id="modFrm" method="post">
									<div class="table-responsive">
										<table class="table table-bordered">
											<colgroup>
												<col width="100" />
												<col width="900" />
											</colgroup>
											<tr>
												<td class="text-center">제목</td>
												<td>
													<div class="form-group">
														<input type="text" class="form-control" name="q_title" placeholder="제목을 입력해주세요"
															style="width: 945px" value="${qnaInfo.q_title}"> <input type="hidden"
															name="p_no" value="${qnaInfo.p_no}"> <input type="hidden" name="q_no"
															value="${qnaInfo.q_no}"> <input type="hidden" name="q_pnum"
															value="${q_pnum}">
													</div>
												</td>
											</tr>
											<tr>
												<td class="text-center">이름</td>
												<td><input type="text" class="form-control" name="m_id" readonly="readonly"
													value="${qnaInfo.m_id}" style="width: 160px"></td>
											</tr>
											<tr>
												<td colspan="2"><textarea rows="12" class="form-control" name="q_contents">${qnaInfo.q_contents}</textarea></td>
											</tr>

											<tr>
												<td class="text-center">비밀글설정</td>
												<td><label class="radio-inline"> <input type="radio" name="secret"
														id="public" value="public" checked>공개글
												</label> <label class="radio-inline"> <input type="radio" name="secret" id="private"
														value="private">비밀글
												</label></td>
											</tr>
										</table>
									</div>
								</form>
								<div align="right">
									<button type="button" id="mod" class="btn btn-default btn-s">수정</button>
									<a href="qnaList.do">
										<button type="button" class="btn btn-default btn-s">목록</button>
									</a>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
