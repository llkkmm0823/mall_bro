<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/admin/header.jsp" %>
<%@ include file="/admin/sub_menu.jsp" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<article>
<h1>주문리스트</h1>
<form name ="frm" method="post">
	<table style="float:right;">
		<tr>
			<td>주문상품 이름<input type="text" name="key" value="${key}">
				<input class="btn" type="button" value="검색" onClick="go_search('adminOrderList');">
				<input class="btn" type="button" value="전체보기" onClick="go_total('adminOrderList');">
			</td>
		</tr>
	</table>
	
	<table id ="orderList">
		<tr>
			<th>주문번호(처리)</th>
			<th>주문자</th>
			<th>상품명</th>
			<th>수량</th>
			<th>우편</th>
			<th>주소</th>
			<th>전화</th>
			<th>주문일</th>
		</tr>
		<c:forEach items="${orderList}" var ="orderVO">
			<tr>
				<td>
					<c:choose>
						<c:when test='${orderVO.result=="1"}'>
							<span style="font-weight: bold; color: blue">${orderVO.oseq}</span>
							(<input type="checkbox" name="result" value="${orderVO.odseq}">미처리)
						</c:when>
						<c:otherwise>
							<span style="font-weight: bold; color: red">${orderVO.oseq}</span>
							(<input type="checkbox" checked="checked" disabled="disabled">처리완료)
						</c:otherwise>
					</c:choose>
				</td>
				<td>${orderVO.mname}</td>
				<td>${orderVO.pname}</td>
				<td>${orderVO.quantity}</td>
				<td>${orderVO.zip_num}</td>
				<td>${orderVO.address1}</td>
				<td>${orderVO.phone}</td>
				<td><fmt:formatDate value="${orderVO.indate}"/></td>
			</tr>
		</c:forEach>
	</table>
	<div class="clear"></div>
	<input type="button" class="btn" style="width: 200px" value="주문처리(입금완료)" onClick="go_order_save()">
	
	<br><br>
	
	<jsp:include page="/admin/paging/page.jsp" >
		<jsp:param name="command" value="shop.do?command=adminOrderList"/>
	</jsp:include>
</form>
</article>



<%@ include file="/admin/footer.jsp" %>
