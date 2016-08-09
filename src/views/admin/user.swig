{% extends "../base/layout.html" %}

{% block content %}
<!-- MAIN PANEL -->
<div id="main" role="main">

    <!-- RIBBON -->
    <div id="ribbon">

                        <span class="ribbon-button-alignment">
                            <span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"
                                  rel="tooltip" data-placement="bottom"
                                  data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings."
                                  data-html="true">
                                <i class="fa fa-refresh"></i>
                            </span>
                        </span>

        <!-- breadcrumb -->
        <ol class="breadcrumb">
            <li>Home</li>
            <li>Dashboard</li>
        </ol>
        <!-- end breadcrumb -->

        <!-- You can also add more buttons to the
        ribbon for further usability

        Example below:

        <span class="ribbon-button-alignment pull-right">
        <span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
        <span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
        <span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
        </span> -->

    </div>
    <!-- END RIBBON -->

    <!-- MAIN CONTENT -->
    <div id="content">

        <!-- widget grid -->
        <section id="widget-grid" class="">


            <!-- START ROW -->

            <div class="row">

                <!-- NEW COL START -->
                <article class="col-sm-10 col-md-10 col-lg-8">

                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget" id="wid-id-4" data-widget-editbutton="false"
                         data-widget-custombutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-edit"></i> </span>

                            <h2> 更新密码 </h2>

                        </header>

                        <!-- widget div-->
                        <div>

                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">
                                <!-- This area used as dropdown edit box -->

                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body no-padding">

                                <form id="smart-form-register" class="smart-form" method='post' action='/adminSys/admin/modifyPassword' >
                                    <header>
                                        更新密码
                                    </header>

                                    <fieldset>
                                        <section>
                                            <label class="input"> <i class="icon-append fa fa-lock"></i>
                                                <input type="password" name="password" placeholder="密码"
                                                       id="password">
                                            </label>
                                        </section>

                                        <section>
                                            <label class="input"> <i class="icon-append fa fa-lock"></i>
                                                <input type="password" name="passwordConfirm"
                                                       placeholder="确认密码">
                                            </label>
                                        </section>
                                    </fieldset>
                                    <footer>
                                        <button type="submit" class="btn btn-primary">
                                            更新
                                        </button>
                                    </footer>
                                </form>

                            </div>
                            <!-- end widget content -->

                        </div>
                        <!-- end widget div -->

                    </div>
                    <!-- end widget -->

                </article>
                <!-- END COL -->

            </div>

            <!-- END ROW -->

        </section>
        <!-- end widget grid -->

    </div>
    <!-- END MAIN CONTENT -->

</div>
<!-- END MAIN PANEL -->

{% block importJs %}
<script src="/js/plugin/jquery-validate/jquery.validate.min.js"></script>
{% endblock %}

{% block scripts %}
<script>
    var $registerForm = $("#smart-form-register").validate({

        // Rules for form validation
        rules: {
            password: {
                required: true,
                minlength: 3,
                maxlength: 20
            },
            passwordConfirm: {
                required: true,
                minlength: 3,
                maxlength: 20,
                equalTo: '#password'
            },
        },

        // Messages for form validation
        messages: {
            password: {
                required: '请输入密码'
            },
            passwordConfirm: {
                required: '请输入确认密码',
                equalTo: '两次输入密码不一致'
            },
        },

        // Do not change code below
        errorPlacement: function (error, element) {
            error.insertAfter(element.parent());
        }
    });
</script>
{% endblock %}
