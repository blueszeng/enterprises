
{% extends "../base/login-layout.html" %}
{% block content %}
<div id="main" role="main">

			<!-- MAIN CONTENT -->
			<div id="content" class="container">

				<div class="row">
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-4 hidden-xs hidden-sm"></div>
					<div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
						<div class="well no-padding">
							<form method='post' action='/adminSys/admin/login' id="login-form" class="smart-form client-form">
								<header>
									后台管理
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
