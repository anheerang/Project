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
        <input type="submit" value="Login" class="submit">
        <input type="button" value="Sign Up" class="cancel" 
                onclick="location='contract'"> <br>
        <input type="button" value="forgot ID and Password?" class="submit"
                onclick="find_id_form()">
      </div>
    </form>
</div>
<%@ include file="../footer.jsp" %>