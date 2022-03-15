<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header1.jsp" %>
<div id="out">
  <div id="login">
    <h1>Welcome MYHOME</h1>
    <form method="post" action="login">
        <input name="id" class="userid" type="text" placeholder="USERID"><br>
        <input name="pwd" class="userpwd" type="password" placeholder="PASSWORD"><br>
		<div class="clear"></div>
      
      <div id="buttons">
        <button type="submit"  class="submit">LOGIN</button><br>
        <input type="button" value="회원가입" class="cancel" 
                onclick="location='contract'"> 
        <input type="button" value="아이디/비밀번호찾기" class="submit"
                onclick="find_id_form()" style="font-size:12px;padding-left:10px;">
      </div>
    </form>
  </div>
<%@ include file="../footer.jsp" %>