<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/shop/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/shop/css/kfonts2.css" rel="stylesheet">
<link href="/web/shop/css/maincss.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
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
									<td class="text-center" >제목</td>
									<td>
										<form role="form" class="form-inline">
											<div class="form-group">	
		      									<select class="form-control">
		        									<option selected>문의유형</option>
		        									<option>배송문의</option>
		        									<option>상품문의</option>
		        									<option>기타문의</option>
		      									</select>             
		        								<input type="text" class="form-control" style="width: 945px" value="사이즈가 궁금해요! ">
		    								</div> 
										</form>
									</td>
								</tr>
								<tr>
									<td class="text-center" >이름</td>
									<td>
										<input type="text" class="form-control" placeholder="강***" style="width: 160px">
									</td>
								</tr>
								<tr>
									<td colspan="2"><textarea rows="12" class="form-control" ></textarea></td>
								</tr>
								<tr>
									<td class="text-center">첨부파일</td>
									<td><input type="file"></td>
								</tr>
								<tr>
									<td class="text-center">비밀번호</td>
									<td><input type="text" class="input-sm"></td>
								</tr>
								<tr>
									<td class="text-center">비밀글설정</td>
									<td>
										<label class="radio-inline"> <input type="radio" name="optionsRadios" id="optionsRadios value="option1" checked>공개글</label> 
										<label class="radio-inline"> <input type="radio" name="optionsRadios" id="optionsRadios value="option1" checked>비밀글</label> 										
									</td>
								</tr>
							</table>
						</div>						
						<form role="form" class="form-inline pull-right">
							<a href="qnaModify.jsp"><button type="button" class="btn btn-default btn-s">등록</button></a>
							<a href="qna.jsp"><button type="button" class="btn btn-default btn-s">목록</button></a>
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

