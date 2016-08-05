
{% extends "../base/login-layout.html" %}
{% block content %}
<div id="main" role="main">

			<!-- MAIN CONTENT -->
			<div id="content" class="container">

				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-7 col-lg-8 hidden-xs hidden-sm">
						<h1 class="txt-color-red login-header-big">SmartAdmin</h1>
						<div class="hero">

							<div class="pull-left login-desc-box-l">
								<h4 class="paragraph-header">It's Okay to be Smart. Experience the simplicity of SmartAdmin, everywhere you go!</h4>
								<div class="login-app-icons">
									<a href="javascript:void(0);" class="btn btn-danger btn-sm">Frontend Template</a>
									<a href="javascript:void(0);" class="btn btn-danger btn-sm">Find out more</a>
								</div>
							</div>

							<img src="/img/demo/iphoneview.png" class="pull-right display-image" alt="" style="width:210px">

						</div>

						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
								<h5 class="about-heading">About SmartAdmin - Are you up to date?</h5>
								<p>
									Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa.
								</p>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
								<h5 class="about-heading">Not just your average template!</h5>
								<p>
									Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi voluptatem accusantium!
								</p>
							</div>
						</div>

					</div>
					<div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
						<div class="well no-padding">
							<form method='post' action='/adminSys/admin/login' id="login-form" class="smart-form client-form">
								<header>
									后台登陆
								</header>

								<fieldset>

									<section>
										<label class="label">账号</label>
										<label class="input"> <i class="icon-append fa fa-user"></i>
											<input type="text" name="userName">
											<b class="tooltip tooltip-top-right"><i class="fa fa-user txt-color-teal"></i> 请输入登陆号</b></label>
									</section>

									<section>
										<label class="label">密码</label>
										<label class="input"> <i class="icon-append fa fa-lock"></i>
											<input type="password" name="password">
											<b class="tooltip tooltip-top-right"><i class="fa fa-lock txt-color-teal"></i> 请输入密码</b> </label>
									</section>

									{# <section>
										<label class="checkbox">
											<input type="checkbox" name="remember" checked="">
											<i></i>记住密码</label>
									</section> #}
								</fieldset>
								<footer>
									<button type="submit" class="btn btn-primary">
										登陆
									</button>
								</footer>
							</form>

						</div>

					</div>
				</div>
			</div>

		</div>
{% endblock %}

{% block scripts %}
<script type="text/javascript">
	runAllForms();
	$(function() {
		// Validation
		$("#login-form").validate({
			// Rules for form validation
			rules : {
				userName : {
					required : true,
					email : true
				},
				password : {
					required : true,
					minlength : 3,
					maxlength : 20
				}
			},

			// Messages for form validation
			messages : {
				userName : {
					required : '请输入账号！！！！！！',
				},
				password : {
					required : '请输入密码！！！！！！'
				}
			},

			// Do not change code below
			errorPlacement : function(error, element) {
				error.insertAfter(element.parent());
			}
		});
	});
{% endblock %}
