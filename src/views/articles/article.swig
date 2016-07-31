
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
                    <i class="fa fa-table fa-fw "></i>
                    文章管理
							<span>>
								文章列表
							</span>
                </h1>
            </div>
            <div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
                <a href="/articles/article/add" class="pull-right btn btn-primary">
                    添加文章
                </a>
            </div>
        </div>

        <!-- widget grid -->
        <section id="widget-grid" class="">

            <!-- row -->
            <div class="row">
                <!-- NEW WIDGET START -->
                <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                            <h2>文章列表</h2>

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
                                <form class="form-horizontal" method="get" action='/articles/article'>
                                    <fieldset class="scheduler-border">
                                        <legend class="scheduler-border">筛选条件</legend>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label text-right">文章类型</label>

                                            <div class="col-sm-2">
                                                <input type="hidden" id = "articlesTypeId" name="articlesTypeId" value="">
                                            </div>

                                            <label class="col-sm-1 control-label text-right">文章标题</label>

                                            <div class="col-sm-2">
                                                <input type="text" class="form-control" name="title" value="{{title}}">
                                            </div>
                                            <div class="col-sm-2">
                                                <button class="btn-primary btn">搜索</button>
                                            </div>
                                        </div>
                                    </fieldset>
                                </form>

                                <div class="table-responsive">

                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>文章ID</th>
                                            <th>创建时间</th>
                                            <th>作者</th>
                                            <th>文章标题</th>
                                            <th>管理</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        {% for article in articles.articlesList %}
                                        <tr>
                                            <td>{{article.id}}</td>
                                            <td>{{article.createTime | date('Y-m-d H:i:s', -480, 'CCT')}}</td>
                                            <td>{{article.author}}</td>
                                            <td>{{article.title}}</td>
                                            <td><a href="/articles/article/edit/{{article.id}}"><button class="btn-xs btn btn-primary">编辑</button></a>
                                                <a href="/articles/article/del/{{article.id}}"><button class="btn-xs btn btn-danger">删除</button></a>
                                            </td>
                                        </tr>
                                        {% endfor %}
                                        </tbody>
                                    </table>
                                    <div class="dataTables_paginate paging_simple_numbers" id="datatable_col_reorder_paginate">
                                        <ul class="pagination"></ul>
                                    </div>
                                </div>
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
{% endblock %}

{% block importJs %}
<script src="/js/pages.js"></script>
<script src="/js/plugin/select2/select2.min.js"></script>
{% endblock %}

{% block scripts %}
<script>
    var pageCount = Math.ceil("{{articles.count}}" / 5)
    var current = "{{articles.page}}";
    pages.showPage(pageCount, current);
</script>
<script>
  function converTempObjToArray(templateObj) {
    templateObj = templateObj.split(',')
    templateObj.length = templateObj.length -1
    return templateObj
  }
  function combTempObjToSelectArray(templateId, templateText) {
    templateId = converTempObjToArray(templateId)
    templateText = converTempObjToArray(templateText)
    var selectArray = []
    console.log(templateId)
    for (var i in templateId) {
      selectArray.push({id: templateId[i],text: templateText[i]})
    }
    return selectArray
  }
  var id = "{% for item in articlesTypeIds -%}{{ item.id}},{%- endfor %}"
  var text = "{% for item in articlesTypeIds -%}{{ item.name}},{%- endfor %}"
  var productType = combTempObjToSelectArray(id, text)
  $("#articlesTypeId").select2({
      placeholder: "请选择文章类型",
      maximumSelectionSize: 1,
      minimumResultsForSearch: Infinity,
      allowClear: true,
      data: function() { return {results: productType}; }
  });
  $("#articlesTypeId").val('{{articlesTypeId}}').trigger("change")
</script>
{% endblock %}
