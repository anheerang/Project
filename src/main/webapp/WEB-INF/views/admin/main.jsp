<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="admin/css/admin.css">
<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat&family=Nanum+Gothic&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
</style>
<script type="text/javascript">
function worker_check(){
  if(document.frm.workId.value==""){
      alert("아이디를 입력하세요.");
      return false;
  } else if(document.frm.workPw.value==""){
     alert("비밀번호를 입력하세요.");
      return false;
  }
  return true;  
}
</script>
</head>
<body>
<div id="wrap">
        <header>
            <div>
                <a href="admin_login_form">
                    <img src="images/myhome.png" style="width:120px;margin-top:40px;">
                </a>
            </div>
        </header>
        <div class="clear"></div>
        <article>
            <div id="loginform">
                <img src="images/admin.png" style="height:200px;">
                <form name="frm" method="post" action="admin_login">
                    <table>
                        <tr>
                            <td>아이디</td>
                            <td><input type="text" id="workId" name="workerId" value="admin"></td>
                        </tr>
                        <tr>
                            <td>비밀번호</td>
                            <td>
                                <input type="password" id="workPw" name="workerPwd" value="admin">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input class="btn" type="submit" value="업무로그인" onclick="return worker_check()"><br>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </article>
    </div>
</body>
</html>