<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<tr align="center">
		<!-- ����� -->
		<td align="right">
			<table border="">
				<tr>
					<!-- <td>����������ȣ</td> -->
					<td>�����</td>

				</tr>

				<c:forEach items="${data.home1 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.away_img }${vo.away }${vo.away_score }vs
							${vo.home_score }${vo.home }${vo.home_img }</td>
					</tr>
				</c:forEach>

			</table>
		</td>



		<td align="left">

			<table border="">
				<tr>
					<!-- <td>����������ȣ</td> -->
					<td>�������</td>

				</tr>

				<c:forEach items="${data.home1 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.away_img }${vo.away }vs ${vo.home_score }${vo.home }</td>
					</tr>
				</c:forEach>

			</table>

		</td>
	</tr>

	<tr align="center">
		<td align="right">
			<table border="">
				<tr>
					<td colspan="2">Ÿ�� TOP3</td>
				</tr>
				
				<tr><td colspan="2">Ÿ��</td></tr>
			<c:forEach items="${data.home2 }" var="vo" varStatus="no">
				<tr>
					<td>${vo.playerName }</td><td>${vo.avg }</td>
				</tr>
				</c:forEach>
				<tr><td colspan="2">Ȩ��</td></tr>
				<c:forEach items="${data.home4 }" var="vo" varStatus="no">
				<tr>
					<td>${vo.playerName }</td><td>${vo.hr }</td>
				</tr>
				</c:forEach>
				<tr><td colspan="2">Ÿ��</td></tr>
				<c:forEach items="${data.home6 }" var="vo" varStatus="no">
				<tr>
					<td>${vo.playerName }</td><td>${vo.rbi }</td>
				</tr>

				</c:forEach>
				
			</table>
		</td>
		
		
		<td align="right">
			<table border="">
				<tr>
					<td colspan="2">���� TOP3</td>
				</tr>
				
				<tr><td colspan="2">�����å��</td></tr>
			<c:forEach items="${data.home3 }" var="vo" varStatus="no">
				<tr>
					<td>${vo.playerName }</td><td>${vo.era }</td>
				</tr>
				</c:forEach>
				<tr><td colspan="2">�¸�</td></tr>
				<c:forEach items="${data.home7 }" var="vo" varStatus="no">
				<tr>
					<td>${vo.playerName }</td><td>${vo.w }</td>
				</tr>
				</c:forEach>
				<tr><td colspan="2">Ż����</td></tr>
				<c:forEach items="${data.home5 }" var="vo" varStatus="no">
				<tr>
					<td>${vo.playerName }</td><td>${vo.pitcherSo }</td>
				</tr>

				</c:forEach>
				
			</table>
		</td>



		<td align="left">
			<table border="">
				<tr>
					<td colspan="7">TEAM RANKING</td>
				</tr>
				<tr>

					<td>����</td>
					<td>��</td>
					<td>���</td>
					<td>��</td>
					<td>��</td>
					<!-- <td>��</td> -->
					<td>�·�</td>
					<td>������</td>

				</tr>
			<c:forEach items="${data.home8 }" var="vo" varStatus="no">
				<tr>
					<td>${no.count }</td>
					<td>${vo.teamName }</td>
					<td>${vo.g }</td>
					<td>${vo.w }</td>
					<td>${vo.l }</td>
					<td>${vo.winPer }</td>
					<td>${vo.cha }</td>
				</tr>
				
				

				</c:forEach>
				
			</table>
		</td>
	</tr>




</body>
</html>