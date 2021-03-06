<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NO NAME</title>
<link href="css/maincss.css" rel="stylesheet">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		var p_no = $("input[name='p_no']").val();
		$("p#hiddenP").hide();
		
		$("button#review").click(function() {
			
			if(${empty sessionScope.id}){
				alert("로그인 후 작성해주세요");
				document.location.href="SignIn2.jsp";
			}else
			document.location.href = "reviewWrite.do?p_no=" + p_no;
		});
		$("button#qna").click(function() {
			if(${empty sessionScope.id}){
				alert("로그인 후 작성해주세요");
				document.location.href="SignIn2.jsp";
			}else
			document.location.href = "qnaWrite.do?p_no=" + p_no;
		});
		
		$("select#color").change(function(){
			var color=$("select#color").val().split(",");
			$("p#hiddenP").show();
			$("span#selected").prepend('<br>-'+color[0]+' '+color[1]); 
			//수량선택하는 박스는 어떻게 각각 추가할수있을까????? .each...??
			
		});
	});
</script>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="wrap">
		<div class="mainWrap">
			<div class="p_Info">
				<div id="left-box">
					<img alt=".." src="img/${productInfo.p_fileName}">
				</div>
				<div id="right-box">
					<input type="hidden" name="p_no" value="${productInfo.p_no}">
					<p>P_name ${productInfo.p_name}</p>
					<hr>
					<div style="width: 80%;">
						<p>info: ${productInfo.info}나이키 스우시 런 쇼츠는 가볍고 편안하며 뛰는 동안 뛰어난 통기성과 지지력을 선사합니다.</p>
						<p>우븐 소재로 가볍고 내구성이 우수합니다. 땀 발산 기술을 적용해 한결같은 쾌적함과 편안함을 선사합니다.</p>
						<p>니트 안감이 지지력과 통기성을 선사합니다. 조임 끈이 달린 신축성 있는 허리밴드로 쇼츠의 핏을 조절할 수 있습니다.</p>
					</div>
					<hr>
					<p style="width: 80%;">
						&#8361;
						<span id="price">${productInfo.price}</span>
						<span style="float: right;">
							<select id="color" style="width: 150px;">
								<option value="empty">색상, 사이즈 선택</option>
								<option disabled="disabled">--------------------------------</option>
								<c:forEach var="i" items="${p_Detail}">
									<option class="selectOption" value="${i}">[${i.p_color}] - ${i.p_size} &nbsp
										남은수량: ${i.qtt}개</option>
								</c:forEach>
							</select>
						</span>
					</p>
					<hr>
					<form action="#" name="selectFrm">
						<p id="hiddenP">${productInfo.p_name}
							<span id="selected">

								<select id="qtt">
									<c:forEach var="i" begin="1" end="10">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select>
							</span>
						</p>
					</form>
					<br>
					<span>
						<button>BUY NOW</button>
						<button>ADD CART</button>
					</span>
				</div>
			</div>
			<div class="mainContents">
				<div class="p_Detail">
					<hr style="border: 2px solid #eee; width: 100%; margin: 0;">
					<div>
						<div align="right">
							<br>
							<span>
								<button id="review">리뷰</button>
								<button id="qna">문의</button>
							</span>
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

