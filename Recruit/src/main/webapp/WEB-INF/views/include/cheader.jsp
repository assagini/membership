<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>퍼팩트 매칭</title>

<!-- Bootstrap Core CSS -->
<link href="/resources/rpjt/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<!-- <link href="css/shop-item.css" rel="stylesheet"> -->
<link href="/resources/rpjt/css/lovelyB_022711.css" rel="stylesheet">




<!--___1.이게 추가되야 그림이 나온다  -->
<!--x Theme style -->
<link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
<!--//___1.  -->




<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">퍼팩트 매칭</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">기업찾기</a></li>
					<li><a href="#">인재찾기</a></li>
					<li><a href="#">검색</a></li>

					<!--___2.버튼추가  -->
					<li><button type="button" class="btn btn-default btn-lg"
							id="myBtn_join">회원가입</button></li>
					<li><a href="#"> <span class="glyphicon glyphicon-log-in"></span>
							로그인
					</a></li>
					<!--//___2.  -->

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>






	<!--______________________회원가입 폼______________________________________  -->
	<!--___modal fade  -->
	<div class="modal fade" id="modal_join" role="dialog">
		<div class="modal-dialog">
			<div class="login-box-body col-xs-8">

				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#join_person">개인회원</a></li>
					<li><a data-toggle="tab" href="#join_company">기업회원</a></li>
				</ul>

				<br>

				<div class="tab-content">

					<!--___join_person  -->
					<div id="join_person" class="tab-pane fade in active">
						<form role="form" action="joinperson" method="post">

							<div class="box-body">

								<!--___id나오는 부분-->
								<div class="form-group">
									아이디<input type="text" name='title' class="form-control"
										placeholder="4~10자리를 입력하세요.">
								</div>


								<!--___password나오는 부분 -->
								<div class="form-group">
									비밀번호<input type="password" name='content' class="form-control"
										placeholder="6자리를 입력하세요.">
								</div>



								<!--___이름 나오는 부분-->
								<div class="form-group">
									이름<input type="text" name='writer' class="form-control"
										placeholder="이름을 입력하세요.">
								</div>


								<!--___생년월일 나오는 부분-->
								<div class="form-group">
									생년월일<input type="text" name='' class="form-control"
										placeholder="생년월일 폼 적용">
								</div>


								<!--___이메일 나오는 부분-->
								<div class="form-group has-feedback">
									이메일<input type="text" name="uid" class="form-control"
										placeholder="이메일을 입력하세요. 예) iampeel@naver.com" /> <span
										class="glyphicon  form-control-feedback"></span>
								</div>

								<!--___이메일 인증 버튼  -->
								<a href="register.html" class="text-center">이메일 인증하기</a>

								<div class="row">

									<div class="col-xs-8"></div>

									<!--___가입하기 버튼 -->
									<div class="col-xs-4">
										<button type="submit" class="btn btn-primary">가입하기</button>
									</div>

								</div>


							</div>

						</form>


					</div>
					<!--//___join_person  -->






					<!--___join_company  -->
					<div id="join_company" class="tab-pane fade">
						<form action="/user/loginPost" method="post">

							<!--___id나오는 부분-->
							<div class="form-group has-feedback">
								아이디<input type="text" name="uid" class="form-control"
									placeholder="4~10자리를 입력하세요." /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>

							<!--___password나오는 부분 -->
							<div class="form-group has-feedback">
								비밀번호<input type="password" name="upw" class="form-control"
									placeholder="6자리를 입력하세요." />
								<!--★ glyphicon-lock 자물쇠 그림  -->
								<span class="glyphicon form-control-feedback"></span>
							</div>


							<!--___회사명 나오는 부분-->
							<div class="form-group has-feedback">
								회사명<input type="text" name="uid" class="form-control"
									placeholder="회사명을 입력하세요." /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>


							<!--___담당자 이름 나오는 부분-->
							<div class="form-group has-feedback">
								담당자 이름<input type="text" name="uid" class="form-control"
									placeholder="담당자 이름을 입력하세요." /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>


							<!--___이메일 나오는 부분-->
							<div class="form-group has-feedback">
								이메일<input type="text" name="uid" class="form-control"
									placeholder="이메일을 입력하세요. 예) iampeel@naver.com" /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>


							<!--___이메일 인증 버튼  -->
							<div>
								<a href="register.html" class="text-center">이메일 인증하기</a>
							</div>


							<!--___사업자 등록 번호 나오는 부분-->
							<br>
							<div class="form-group has-feedback">
								사업자 등록번호<input type="text" name="uid" class="form-control"
									placeholder="'-'없이 숫자만 입력하세요" /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>


							<!--___사업자 등록번호 인증 버튼  -->
							<div>
								<a href="register.html" class="text-center">사업자 등록번호 인증하기</a>
							</div>




							<div class="row">

								<div class="col-xs-8"></div>

								<!--___가입하기 버튼 -->
								<div class="col-xs-4">
									<button type="submit"
										class="btn btn-primary btn-block btn-flat">가입하기</button>
								</div>
								<!--//___가입하기 버튼 -->

							</div>

						</form>





					</div>
					<!--//___join_company  -->

				</div>
				<!--//___tab-content  -->

			</div>
			<!--//___join-box-body -->

		</div>
		<!--//___modal-dialog  -->

	</div>
	<!--//___modal fade  -->
	<!--//______회원가입 폼  -->






	<!-- Bootstrap 3.3.2 JS -->
	<!-- 	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script> -->
	-->


	<!-- FastClick -->
	<!-- 	<script src='/resources/plugins/fastclick/fastclick.min.js'></script>
 
 -->
	<!-- AdminLTE App -->
	<!-- 	<script src="/resources/dist/js/app.min.js" type="text/javascript"></script>

  -->
	<!-- AdminLTE for demo purposes -->
	<!-- 	<script src="/resources/dist/js/demo.js" type="text/javascript"></script>

 -->


	<!--___회원가입 모달  -->
	<script>
		$(document).ready(function() {
			$("#myBtn_join").click(function() {
				$("#modal_join").modal();
			});
		});
	</script>


	<!--______________________________________________________________________  -->




	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-md-3">
				<p class="lead">기업정보관리</p>
				<div class="list-group">
					<a href="/rpjt/index" class="list-group-item">기업정보관리</a> <a
						href="/rpjt/write" class="list-group-item">채용공고작성</a> <a
						href="/rpjt/manage" class="list-group-item">채용공고관리</a> <a
						href="/rpjt/recom" class="list-group-item">추천인재</a> <a
						href="/rpjt/favor" class="list-group-item">관심인재</a>
				</div>
			</div>