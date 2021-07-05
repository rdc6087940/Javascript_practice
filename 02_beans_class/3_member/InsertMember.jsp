<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.beans.*"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- 하나씩 천천히 도전합시다 -->
<jsp:useBean id="Member" class="member.beans.Member" scope="page" />
<jsp:setProperty name="Member" property="*" />
<%
	
	
	String id = Member.getId();
	String password = Member.getPassword();
	String name = Member.getName();
	String tel = Member.getTel();
	String addr = Member.getAddr();
	
	MemberDao dao = MemberDao.getInstance();
	
	
	int result = dao.insertMember(Member);
	if(result==-2){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디를 입력해주세요!')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result==-3)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호를 입력해주세요!')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result==-4)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이름을 입력해주세요!')");
		script.println("history.back()");
		script.println("</script>");
	}
	else{
		out.println("<script>alert('등록 완료');</script>");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 확인</title>
</head>
<body>
	아이디 :
	<%= id  %><br> 패스워드 :<%= password  %><br> 이름 :<%= name %>
	<br> 전화 :
	<%=tel  %><br> 주소 :
	<%= addr %><br>
</body>
</html>