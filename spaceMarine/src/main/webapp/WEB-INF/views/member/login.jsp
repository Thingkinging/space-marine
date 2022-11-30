<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
// 	function check() {
// 		if ($("#co_cd").val() == "") {
// 			alert("아이디를 입력해주세요.");
// 			return false;
// 		}
// 		if ($("#co_nm").val() == "") {
// 			alert("비밀번호를 입력해주세요.");
// 			return false;
// 		}
// 	}
</script>
<article id="login">
	<h2 class="major">Login</h2>
	<form method="post" action="/member/login">
		<div class="fields">
			<div class="field half">
				<label for="co_cd">ID</label>
				<input type="text" name="co_cd" id="co_cd" />
			</div>
			<div class="field half">
				<label for="co_nm">Password</label>
				<input type="text" name="co_nm" id="co_nm" />
			</div>
		</div>
		<ul class="actions">
			<li><input type="submit" value="login" class="primary" onclick="check()"/></li>
			<li><input type="reset" value="Reset" /></li>
		</ul>
	</form>
</article>
