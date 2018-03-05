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
					<li id="myBtn_join"><a href="#"> <span class="glyphicon glyphicon-user"></span>
							회원가입
					<li><a href="#"> <span class="glyphicon glyphicon-log-in"></span>로그인	 

 					</a></li>	
					<!--//___2.  -->

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>






	<!--_______________________________________회원가입 모달 시작_______________________________________-->
	
	
	<!--  
	구현하기 까지 과정
	1.
	src/main/java폴더의 com.recruit.domain패키지에
	BoardVO 클래스를 생성한다.
	아이디나 패스워드등등 코드를 보면 id라는 부분이 보인다.
	id속성값을 BoardVO에 변수로 선언한다.	
	
	2.
	src/main/java폴더의 com.recruit.persistence패키지에
	인터페이스 BoardDAO를 생성 
	create 메소드를 선언한다.
	
	3. 
	src/main/java폴더의 com.recruit.persistence패키지에
	BoardDAOImpl 클래스를 생성 
	BoardDAO를 구현한다.
	
	4.
	scr/main/resource폴더 아래 mappers폴더에 
	boardMapper.xml을 생성
	1번을 토대로 작성
	namespace라는 게 있는데 그건 3번에서 쓰임
	-->
	
	
	
	
	<!--
	전체 관련 해야 할 것들
	1. 모달찰 정가운데 배치
	2. 로그인 구현
	-->
	
	
	<!--
	개인회원 해야 할 것들
	1. 아이디 4자리 미만 경고
	2. 아이디 10자리 넘어서 입력 못하게
	3. 비밀번호 6자리 미만 경고
	4. 비밀번호 6자리 넘어서 입력 못하게
	5. 이메일 인증
	-->
	
	
	<!--
	기업회원 해야 할 것들
	1. 아이디 4자리 미만 경고
	2. 아이디 10자리 넘어서 입력 못하게
	3. 비밀번호 6자리 미만 경고
	4. 비밀번호 6자리 넘어서 입력 못하게
	5. 이메일 인증
	6. 사업자 등록 번호 숫자만 입력하게
	7. 사업자 등록 번호 인증
	-->
	
	
	
	<!--여기 써 있는 id값이 맨 밑에 자바 스크립트 부분에서 사용됨/ 회원가입 모달 시작 -->
	<div class="modal fade" id="modal_join" role="dialog">
	
	    <!--뭔지 모르겠지만 없애면 왼쪽에 붙고, 가로폭도 조절이 안됨  -->
		<div class="modal-dialog">
		
			<!--col-xs-8을 써서 모달 가로 폭을 조정했음  -->
			<div class="login-box-body col-xs-8">

				<!--모달 안에서 맨 위에 있는 네비게이션  -->
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#join_person">개인회원</a></li>
					<li><a data-toggle="tab" href="#join_company">기업회원</a></li>
				</ul>

				<br>

				<!--모달 안에 들어가는 내용  -->
				<div class="tab-content">

					<!--_____________________개인 회원 시작 _____________________ -->
					<!--개인회원 내용  -->
					<div id="join_person" class="tab-pane fade in active">
					
						<!--action속성값이 rController랑 연결되는 거 같음  -->
						<form role="form" action="joinperson" method="post">

							<!--뭔지 모르겠지만 box-body를 빼면 전체 틀이 약간 구려짐  -->
							<div class="">

								<!--아이디 -->
								<div class="form-group">
									아이디<input type="text" name='id' class="form-control"
										placeholder="4~10자리를 입력하세요.">
								</div>


								<!--비밀번호 -->
								<div class="form-group">
									비밀번호<input type="password" name='pw' class="form-control"
										placeholder="6자리를 입력하세요.">
								</div>


								<!--이름 -->
								<div class="form-group">
									이름<input type="text" name='pname' class="form-control"
										placeholder="이름을 입력하세요.">
								</div>


								<!--생년월일/날짜 폼을 썼음 -->
								<div class="form-group">
									생년월일
									<div class="input-group date" data-provide="datepicker">
										<input type="text" name='birth' class="form-control"
											placeholder="생년월일을 입력하세요."> <span
											class="input-group-addon"> <i
											class="glyphicon glyphicon-calendar"></i>
										</span>
									</div>
								</div>


								<!--이메일 -->
								<div class="form-group has-feedback">
									이메일<input type="text" name="email" class="form-control"
										placeholder="이메일을 입력하세요. 예) iampeel@naver.com" /> <span
										class="glyphicon  form-control-feedback"></span>
								</div>


								<!--이메일 인증  -->
								<a href="register.html" class="text-center">이메일 인증하기</a>


								<!--가입하기 버튼인데 우측에 붙이고 싶어서 이렇게 설정했음  -->
								<div class="row">
									<div class="col-xs-8"></div>
									<div class="col-xs-4">
										<button type="submit" class="btn btn-primary">가입하기</button>
									</div>
								</div>

							</div>
							<!--//class="box-body" 뭔지 모르겠지만 box-body를 빼면 전체 틀이 약간 구려짐   -->

						</form>


					</div>
					<!--//id="join_person" 개인회원 내용 -->
					<!--_____________________개인 회원 끝___________________________  -->



					<!--_____________________기업 회원 시작___________________________  -->
					<!--개인회원 내용  -->
					<div id="join_company" class="tab-pane fade">
						<form role="form" action="joinperson" method="post">

							<!--뭔지 모르겠지만 box-body를 빼면 전체 틀이 약간 구려짐  -->
							<div class="box-body">

								<!--아이디 -->
								<div class="form-group">
									회사 아이디<input type="text" name='id' class="form-control"
										placeholder="4~10자리를 입력하세요.">
								</div>


								<!--비밀번호 -->
								<div class="form-group">
									비밀번호<input type="password" name='pw' class="form-control"
										placeholder="6자리를 입력하세요.">
								</div>
								
								
								<!--회사명 -->
								<div class="form-group">
									회사명<input type="text" name='cname' class="form-control"
										placeholder="회사명을 입력하세요.">
								</div>


								<!--담당자 이름 -->
								<div class="form-group">
									담당자 이름<input type="text" name='pname' class="form-control"
										placeholder="담당자 이름을 입력하세요.">
								</div>


								<!--담당자 이메일 -->
								<div class="form-group has-feedback">
									담당자 이메일<input type="text" name="email" class="form-control"
										placeholder="담당자 이메일을 입력하세요. 예) iampeel@naver.com" /> <span
										class="glyphicon  form-control-feedback"></span>
								</div>


								<!--이메일 인증  -->
								<a href="" class="text-center">이메일 인증하기</a>

								<br>
								<br>
								
								<!--사업자 등록번호 -->
								<div class="form-group">
									사업자 등록번호<input type="text" name='registnum' class="form-control"
										placeholder="띄워쓰기 없이 숫자만 연속으로 입력하세요.">
								</div>


								<!--사업자 등록번호 인증  -->
								<a href="" class="text-center">사업자 등록번호 인증하기</a>


								<!--가입하기 버튼인데 우측에 붙이고 싶어서 이렇게 설정했음  -->
								<div class="row">
									<div class="col-xs-8"></div>
									<div class="col-xs-4">
										<button type="submit" class="btn btn-primary">가입하기</button>
									</div>
								</div>


							</div>
							<!--//class="box-body" 뭔지 모르겠지만 box-body를 빼면 전체 틀이 약간 구려짐   -->

						</form>


					</div>
					<!--//id="join_person" 개인회원 내용 -->


					

				</div>
				<!--//class="tab-content" 모달 안에 들어가는 내용 -->

			</div>
			<!--//class="login-box-body col-xs-8" col-xs-8을 써서 모달 가로 폭을 조정했음-->

	    </div>
		<!--//class="modal-dialog" 뭔지 모르겠지만 없애면 왼쪽에 붙고, 가로폭도 조절이 안됨  -->

	</div>
	<!--//class="modal fade" 회원가입 모달 끝 -->







	<!-- Bootstrap 3.3.2 JS -->
	<!-- 	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script> -->
	


	<!-- FastClick -->
	<!-- 	<script src='/resources/plugins/fastclick/fastclick.min.js'></script>
 
 -->
	<!-- AdminLTE App -->
	<!-- 	<script src="/resources/dist/js/app.min.js" type="text/javascript"></script>

  -->
	<!-- AdminLTE for demo purposes -->
	<!-- 	<script src="/resources/dist/js/demo.js" type="text/javascript"></script>

 -->









	<!--회원가입 모달  -->
	<script>
		$(document).ready(function() {
			$("#myBtn_join").click(function() {
				$("#modal_join").modal();
			});
		});
	</script>


	<!--날짜입력 모달 관련내용  -->
	<script type='text/javascript'>
		$(function() {
			$('.input-group.date').datepicker({
				calendarWeeks : false,
				todayHighlight : true,
				autoclose : true,
				format : "yyyy/mm/dd",
				language : "kr"
			});
		});
	</script>


	<link rel="stylesheet" type="text/css"
		href="/resources/rpjt/datepicker/datepicker3.css" />
	<script type="text/javascript"
		src="/resources/rpjt/datepicker/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="/resources/rpjt/datepicker/bootstrap-datepicker.kr.js"></script>
	<!--//날짜입력 모달 관련내용  -->


	<!--//여기까지가 내가 수정한 부분  -->




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