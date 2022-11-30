<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<article id="join">
	<h2 class="major">Join Member</h2>
	<form method="post" action="/member/register">
		<div class="fields">
			<!-- <form class="validation-form" novalidate> -->
			<div class="field half">
				<div class="field half">
					<label for="co_cd">아이디</label>
					<input type="text" class="form-control" id="co_cd" name="co_cd" placeholder="" value="" required>
				</div>
				<br>
				<div class="field half">
					<label for="co_nm">비밀번호</label>
					<input type="text" class="form-control" id="co_nm" name="co_nm" placeholder="" value="" required>
				</div>
			</div>
			<br>
			<div class="field half">
				<div class="field half">
					<label for="biz_no">이메일</label>
					<input type="text" class="form-control" id="biz_no" name="biz_no" required>
				</div>
				<br>
				<div class="field half">
					<label for="co_no">사업자번호</label>
					<input type="text" class="form-control" id="co_no" name="co_no" required>
				</div>
			</div>
			<div class="field half">
				<div class="field half">
					<label for="postcode">주소</label>
					<input type="button" onclick="address_find()" value="우편번호 찾기">
				</div>
				<div class="field half">
					<label for="roadAddress"></label>
					<input type="text" id="roadAddress" class="form-control" placeholder="도로명주소">
				</div>
			</div>
			<div class="field half">
				<div class="field half">
					<label for="postcode"><br></label>
					<input type="text" id="postcode" class="form-control" placeholder="우편번호">
				</div>
				<div class="field half">
					<label for="jibunAddress"></label>
					<input type="text" id="jibunAddress" class="form-control" placeholder="지번주소">
				</div>
				<span id="guide" style="color: #999; display: none"></span>
			</div>
			<div class="field half">
				<div class="field half">
					<input type="text" id="detailAddress" class="form-control" placeholder="상세주소" style="width: 500px;">
				</div>
				<br>
				<div class="field half">
					<input type="text" id="co_gbn" name="co_gbn" class="form-control" placeholder="참고항목">
				</div>
			</div>
			<div class="row">
				<hr class="mb-4">
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" id="aggrement" required>
					<label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
				</div>
			</div>
		</div>
		<ul class="actions">
			<li><input type="submit" value="Join" class="primary" onclick="check_login()"/></li>
			<li><input type="reset" value="Reset" /></li>
		</ul>
	</form>
	<ul class="icons">
		<li><a href="#" class="icon brands fa-twitter">
				<span class="label">Twitter</span>
			</a></li>
		<li><a href="#" class="icon brands fa-facebook-f">
				<span class="label">Facebook</span>
			</a></li>
		<li><a href="#" class="icon brands fa-instagram">
				<span class="label">Instagram</span>
			</a></li>
		<li><a href="#" class="icon brands fa-github">
				<span class="label">GitHub</span>
			</a></li>
	</ul>
</article>

<script>

var idCheck = false;
var pwdCheck = false;

$("#co_cd").keyup(function () {
	var co_cd = $("#co_cd").val();
	
	$.ajax({
		type : 'post',
		url : '',
		data : {co_cd : co_cd},
		success: function (cnt) {
			if (cnt != 1) {
				$("#co_cd").html("사용 가능한 아이디입니다.");
				idCheck = true;
			} else {
				$("#co_cd").html("이미 사용하고 있는 아이디입니다.");
				idCheck = false;
			}
		}
	});
});


</script>


<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
</body>

</html>