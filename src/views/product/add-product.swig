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
                <h1 class="page-title txt-color-blueDark">
                    <i class="fa fa-pencil-square-o fa-fw "></i>
                    文章管理
							<span>>
								添加文章
							</span>
                </h1>
            </div>
            <div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
                <a href="/" class="pull-right btn btn-primary">
                    返回
                </a>
            </div>
        </div>

        <!-- widget grid -->
        <section id="widget-grid" class="">

            <!-- row -->
            <div class="row">

                <!-- NEW WIDGET START -->
                <article class="col-sm-12 col-md-12 col-lg-12">

                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="center-block jarviswidget" data-widget-colorbutton="false" data-widget-editbutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-eye"></i> </span>
                            <h2>添加文章</h2>

                        </header>

                        <!-- widget div-->
                        <div>

                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">
                                <!-- This area used as dropdown edit box -->

                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body">

                                <form class="form-horizontal">

                                    <fieldset>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="select-1">文章类别</label>
                                            <div class="col-md-10">

                                                <select class="form-control" id="select-1">
                                                    <option>Amsterdam</option>
                                                    <option>Atlanta</option>
                                                    <option>Baltimore</option>
                                                    <option>Boston</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">文章标题</label>
                                            <div class="col-md-10">
                                                <input class="form-control" placeholder="Default Text Field" type="text">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-2 control-label">文章简述</label>

                                            <div class="col-md-10">
                                                <textarea class="form-control" placeholder="Textarea"
                                                          rows="4"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <!-- NEW WIDGET START -->
                                            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                                                <!-- Widget ID (each widget will need unique ID)-->
                                                <div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-togglebutton="false" data-widget-fullscreenbutton="false" data-widget-sortable="false">
                                                    <header>
                                                        <span class="widget-icon"> <i class="fa fa-pencil"></i> </span>
                                                        <h2>文章内容 </h2>

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

                                                        <textarea name="article_content">
                                                        </textarea>

                                                        </div>
                                                        <!-- end widget content -->

                                                    </div>
                                                    <!-- end widget div -->

                                                </div>
                                                <!-- end widget -->

                                            </article>
                                            <!-- WIDGET END -->
                                        </div>

                                    </fieldset>

                                    <div class="form-actions">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <button class="btn btn-primary" type="submit">
                                                    <i class="fa fa-save"></i>
                                                    添加
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </form>

                            </div>
                            <!-- end widget content -->

                        </div>
                        <!-- end widget div -->

                    </div>
                    <!-- end widget -->
                </article>
                <!-- WIDGET END -->

            </div>

            <!-- end row -->

        </section>
        <!-- end widget grid -->

    </div>
    <!-- END MAIN CONTENT -->

</div>


{% block importJs %}
<script src="/js/plugin/ckeditor/ckeditor.js"></script>
{% endblock %}

{% block scripts %}
<script type="text/javascript">
    $(document).ready(function() {

        CKEDITOR.replace( 'article_content', { height: '200px', startupFocus : true} );

    })
</script>
{% endblock %}