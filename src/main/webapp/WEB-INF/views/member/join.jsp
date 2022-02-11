<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header1.jsp" %>

<article>
	<h2>회원가입</h2>
	<form id="join" action="join" method="post" name="formm">
	  <fieldset>
	  	<legend>회원정보</legend>
	  	<label>아이디</label>
	  	<input type="text" name="id" id="id" value="${id}" style="position:relative; left:65px; width:70px">
        <input type="hidden" name="reid" id="reid" value="${reid}">&nbsp;&nbsp;
        <input type="button" value="중복체크" class="dup" onclick="idcheck()" style="position:relative;left:50px;"><br>
        <label>비밀번호</label>
        <input type="password" name="pwd" id="pwd"><br>
        <label>비밀번호 확인</label>
        <input type="password" name="pwdCheck" id="pwdCheck"><br>
        <label>이름</label>
        <input type="text" name="name" id="name"><br>
        <label>E-Mail</label>
        <input type="text" name="email"><br>
        <!-- <input type="text" name="email1">@
       <input type="text" name="email2" >
        <select name="selectEmail" id="selectEmail">
            <option value="1">직접입력</option>
            <option value="naver.com" selected>naver.com</option>
            <option value="hanmail.net">hanmail.net</option>
            <option value="nate.com">nate.com</option>
            <option value="gmail.com">gmail.com</option>
            <option value="yahoo.co.kr">yahoo.co.kr</option>
            <option value="dreamwiz.com">dreamwiz.com</option>
        </select><br>-->
        <label>휴대폰번호</label>
        <input type="text" name="phone"><br>
	  </fieldset>

      <fieldset>
        <legend>선택사항</legend>
    
          <label>주소</label>
              <input type="text" name="zip_num" placeholder="우편번호" readonly onclick="post_zip()">
              <input type="button" value="주소찾기" class="dup" onclick="post_zip()"><br>
              <input type="text" name="addr1" placeholder="주소" style="width:210px;"><br>
              <input type="text" name="addr2" placeholder="상세주소" style="width:210px;"><br>
          
      </fieldset>
      <div class="clear"></div>
      <div id="buttons">
        <input type="button" value="회원가입" class="submit" onclick="go_save()" style="width:150px;height:40px">
        <input type="reset" value="취소" class="cansel" style="width:150px;height:40px">
      </div>
	</form>
</article>












<%@ include file="../footer.jsp" %>