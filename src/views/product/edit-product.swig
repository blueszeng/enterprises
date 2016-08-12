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
                    产品类型
							<span>>
								编辑产品类型
							</span>
                </h1>
            </div>
            <div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
                <a href="/products/products" class="pull-right btn btn-primary">
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
                            <h2>编辑产品类型</h2>

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

                                <form class="form-horizontal" method='post' action='/products/products/edit'>
                                    <fieldset>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="select-1">产品类型</label>
                                            <div class="col-md-10">
                                                <input type="hidden" id ="productType"  name ="productsTypeId" >
                                                <input class="form-control"  name ="id" type="hidden" value="{{products.id}}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">产品名称</label>
                                            <div class="col-md-5">
                                                <input class="form-control" placeholder="产品名称" name ="name" type="text" value="{{products.name}}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">产品价格</label>
                                            <div class="col-md-5">
                                                <input class="form-control" placeholder="产品价格" name ="price" type="text" value="{{products.price}}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="select-1">选择上传图片</label>
                                            <input class="form-control" id ="imageUrl" name ="imageUrl" type="hidden" value ="{{products.imageUrl}}">
                                            <div class="col-md-5">
                                                <input type="file" id='recfile' name ="recfile" class="form-control" placeholder="选择上传图片"/>
                                                <div class="image-wrap">
                                                    <img src="{{products.imageUrl}}" class="product-image" />
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <button type="button" id ="upload" class="btn btn-default">上传</button>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="select-1" >图片点击链接</label>
                                            <div class="col-md-5">
                                                <input class="form-control" type="text" name ="linkImageUrl" value="{{products.linkImageUrl}}" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="select-1">是否推荐</label>
                                            <div class="col-md-10">
                                                <input type="hidden" id ="isRecommend"  name ="isRecommend" >
                                            </div>
                                        </div>
                                    </fieldset>

                                    <div class="form-actions">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <button class="btn btn-primary" type="submit">
                                                    <i class="fa fa-save"></i>
                                                    保存
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
{% endblock %}

{% block importJs %}
  <script src="/js/plugin/select2/select2.min.js"></script>
  <script src="/js/ajaxfileupload.js"></script>
{% endblock %}

{% block scripts %}
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
  var id = "{% for item in productsTypeName -%}{{ item.id}},{%- endfor %}"
  var text = "{% for item in productsTypeName -%}{{ item.name}},{%- endfor %}"
  var productType = combTempObjToSelectArray(id, text)
  $("#productType").select2({
      placeholder: "  请选择产品类型",
      maximumSelectionSize: 1,
      minimumResultsForSearch: Infinity,
      allowClear: true,
      data: function() { return {results: productType}; }
  });
  $("#productType").val('{{products.productsTypeId}}').trigger("change")

   isRecommend = [
     {id: 0, text: '不推荐'},
     {id: 1, text: '推荐'},
   ]
   $("#isRecommend").select2({
       maximumSelectionSize: 1,
       minimumResultsForSearch: Infinity,
       allowClear: true,
       data: function() { return {results: isRecommend}; }
   });
   $("#isRecommend").val('{{products.isRecommend}}').trigger("change")

</script>
<script>
    $("#upload").click(function(){
      $("#loading").ajaxStart(function () { $(this).show(); })
      .ajaxComplete(function () { $(this).hide()});
      $.ajaxFileUpload({
        url: '/image/upload',
        secureuri: false,
        fileElementId: 'recfile',
        dataType: 'json',
        success: function (data, status)
        {
          $(".image-wrap").show()
          if (data.status) {
            $(".product-image").attr("src", data.data.path)
            $("#imageUrl").val(data.data.path)
          }
        },
        error: function (data, status, e)
        {
          console.log(data,status,e)
        }
      })
    })
</script>
{% endblock %}
