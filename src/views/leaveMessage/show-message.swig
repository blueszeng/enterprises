
{% extends "../base/layout.html" %}

{% block content %}
<!-- MAIN PANEL -->
<div id="main" role="main">

    <!-- RIBBON -->
    <div id="ribbon">

				<span class="ribbon-button-alignment">
					<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true">
						<i class="fa fa-refresh"></i>
					</span>
				</span>

        <!-- breadcrumb -->
        <ol class="breadcrumb">
            <li>Home</li><li>Dashboard</li>
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
        <div class="row">
            <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">

            <h1 class="page-title txt-color-blueDark hidden-tablet"><i class="fa fa-fw fa-inbox"></i>
                留言管理
                <span>>
                  留言查看
                </span>
            </h1>
            </div>
            <div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
                <a href="/leaveMessage" class="pull-right btn btn-primary">
                    返回
                </a>
            </div>
        </div>

        <!-- widget grid -->
        <section id="widget-grid" class="">

            <!-- row -->
            <div class="row">
                <!-- NEW WIDGET START -->
                <!-- WIDGET END -->
                <div class="col-sm-12 col-lg-12">

  							<div class="panel panel-default">
  								<div class="panel-body status">
  									<div class="who clearfix">
  										<span class="name"><b>姓名：</b> {{message.name}}</span>
  										<span class="name"><b>电话：</b>{{message.phone}}</span>
                      <span class="name"><b>地址：</b> {{message.address}}</span>
                      <span class="name"><b>邮箱：</b> {{message.emal}}</span>
                      <span class="name"><b>留言时间：</b> {{message.createTime | date('F jS, Y')}}</span>
  									</div>
  									<div class="text">
  										<p>
                         {{message.message}}
                      </p>
  									</div>
  								</div>
  							</div>


  						</div>
            </div>

            <!-- end row -->

        </section>
        <!-- end widget grid -->
    </div>
    <!-- END MAIN CONTENT -->

</div>
{% endblock %}
