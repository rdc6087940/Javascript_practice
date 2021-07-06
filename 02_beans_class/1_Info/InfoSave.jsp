<%@ page contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="InfoBean" class="Info.beans.InfoBean" scope="page" />
<jsp:setProperty name="InfoBean" property="*" />
<%

	String id = InfoBean.getId();
	String name = InfoBean.getName();
	String gender = InfoBean.getGender();
	
%>

<html>
<body>
	<h2>  당신의 신상명세서 확인 </h2>
	이   름  : <%=name %> <br/>
	주민번호 : <%=id %><br/>
	성  별   : <%=gender %><br/>  
	맞습니까????
</body>
</html>