{% extends "../base/layout.html" %}

{% block content %}
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

        <div class="inbox-nav-bar no-content-padding">

            <h1 class="page-title txt-color-blueDark hidden-tablet"><i class="fa fa-fw fa-inbox"></i>
                留言管理
            </h1>

            <div class="inbox-checkbox-triggered">

                <div class="btn-group">
                    <a href="/leaveMessage/del" rel="tooltip" title="" data-placement="bottom" data-original-title="删除" class="edit_button deletebutton btn btn-default"><strong><i class="fa fa-trash-o fa-lg"></i></strong></a>
                </div>

            </div>

            <div class="btn-group pull-right inbox-paging">
                <a id = "prePage" href="/leaveMessage" class="btn btn-default btn-sm"><strong><i class="fa fa-chevron-left"></i></strong></a>
                <a id = "nextPage" href="/leaveMessage"  class="btn btn-default btn-sm"><strong><i class="fa fa-chevron-right"></i></strong></a>
            </div>
            <span class="pull-right"><strong id ="page">{{messages.currPage}}-{{messages.maxPage}}</strong> of <strong>{{messages.count}}</strong></span>

        </div>

        <div id="inbox-content" class="inbox-body no-content-padding">

            <div class="inbox-side-bar">

                <a href="javascript:void(0);" id="compose-mail" class="btn btn-primary btn-block"> <strong>留言列表</strong> </a>

                <ul class="inbox-menu-lg">
                    <li>
                        <a href="javascript:void(0);">全部</a>
                    </li>
                    <li class="active">
                        <a class="inbox-load" href="javascript:void(0);"> 未读 ({{messages.readStatus.unread}}) </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">已读({{messages.readStatus.read}})</a>
                    </li>
                </ul>
            </div>

            <div class="table-wrap custom-scroll animated fast fadeInRight">
                <table id="inbox-table" class="table table-striped table-hover">
                    <tbody>
                    <tr >
                        <th class="inbox-table-icon check-all">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkbox style-2">
                                    <span></span> </label>
                            </div>
                        </th>
                        <th class="inbox-data-from hidden-xs hidden-sm">
                            <div>
                                留言名
                            </div>
                        </th>
                        <th class="inbox-data-message">
                            <div>
                                内容
                            </div>
                        </th>
                        <th class="inbox-data-date hidden-xs">
                            <div>
                                日期
                            </div>
                        </th>
                    </tr>
                    {% for message in messages %}
                    <tr >
                        <td class="inbox-table-icon">
                            <div class="checkbox">
                                <label>
                                    <input name="select" type="checkbox" id="{{message.id}}" class="checkbox style-2">
                                    <span></span> </label>
                            </div>
                        </td>
                        <td class="inbox-data-from hidden-xs hidden-sm">
                            <div>
                                {{message.name}}
                            </div>
                        </td>
                        <td class="inbox-data-message">
                            <a href="/leaveMessage/read/{{message.id}}">
                                <span><span class="label bg-color-orange"> {{message.message}}
                            </a>
                        </td>
                        <td class="inbox-data-date hidden-xs">
                            <div>
                              {{message.createTime | date('Y-m-d')}}
                            </div>
                        </td>
                    </tr>
                    {% endfor %}


                    </tbody>
                </table>
            </div>

        </div>


    </div>
    <!-- END MAIN CONTENT -->

</div>
{% endblock %}

{% block scripts %}
<script>


    //全选 全不选
    var Selector = 'th.check-all';
    $(Selector).on('change', function() {
        var $this = $(this),
                index= $this.index() + 1,
                checkbox = $this.find('input[type="checkbox"]'),
                table = $this.parents('table');
        // Make sure to affect only the correct checkbox column
        table.find('tbody > tr > td:nth-child('+index+') input[type="checkbox"]')
                .prop('checked', checkbox[0].checked);

    });
    //得到选中的ID
    $('.edit_button').click(function(){
        var select_id = '';
        $("input:checkbox[name='select']:checked").each(function() {
            var id= $(this).attr("id");
            if(id)
                select_id += 'id=' + id + '&';
        });
        var href = $(this).attr('href');
        if(select_id) {
            $(this).attr('href',href + '?'+select_id.slice(0, -1));
        }
    });


    $('#prePage').click(function(){
        var select_id = '';
        var pageNumberStr = $("#page").html()
        var pageNumberList = pageNumberStr.split('-')
        var href = $(this).attr('href');
        var page = 1
        if(parseInt(pageNumberList[0]) <= 1) {
          page = parseInt(pageNumberList[0])
        } else {
          page = parseInt(pageNumberList[0]) - 1
        }
        $(this).attr('href',href + '?page='+page);
    });

    $('#nextPage').click(function(){
      var select_id = '';
      var pageNumberStr = $("#page").html()
      var pageNumberList = pageNumberStr.split('-')
      var href = $(this).attr('href');
      var page = 1
      if(parseInt(pageNumberList[0]) >= parseInt(pageNumberList[1])) {
        page = parseInt(pageNumberList[1])
      } else {
        page = parseInt(pageNumberList[0]) + 1
      }
      console.log(href + '?page='+page)
      $(this).attr('href',href + '?page='+page);
    });
    $('#readMessage').click(function(){
      var href = $(this).attr('href');
      $(this).attr('href',href + $('#messageId').html());
    })

</script>
{% endblock %}
