<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<div id="login">
  <h1>Welcome MYHOME</h1>
  <form method="post" action="login">
    <fieldset>
      <label>UserID</label>
      <input name="id" type="text" value="${id}"><br>
      <label>Password</label>
      <input name="pwd" type="password"><br>
    </fieldset>
    <div class="clear"></div>
    
    <div id="buttons">
      <input type="submit" value="Login" class="submit">
      <input type="button" value="Sign Up" class="cancel" 
      		onclick="location='contract'">
      <input type="button" value="forgot ID and Password?" class="submit"
      		onclick="find_id_form()">
    </div>
  </form>
</div>
<%@ include file="../footer.jsp" %>