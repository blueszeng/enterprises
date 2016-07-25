{% extends "./base/layout.html" %}
{% block head %}
  <title>{{title}}</title>
  <style type="text/css">
  /*.breadcrumbs > li + li:before{
      color: #CCCCCC;
      content: '/';
      padding: 0 5px ;
  } */

  .tt .breadcrumbs > li {
      display: inline;
  }

  .tt  {
      display: inline-block;
  }


</style>
{% endblock %}
{% block importCss %}
<link href="/assets/global/src/prettify.css" rel="stylesheet" />
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/assets/global/css/style.css"/>
<link rel="stylesheet" type="text/css" src="/assets/global/plugins/bootstrap-table.css" />
{% endblock %}
{% block importJs %}
  <script type="text/javascript" src="/assets/global/plugins/jquery.hotkeys.js"></script>
  <script type="text/javascript" src="/assets/global/plugins/bootstrap-wysiwyg.js"></script>
  <script type="text/javascript" src="/assets/global/plugins/prettify.js"></script>
  <script type="text/javascript" src="/assets/global/plugins/bootstrap-table.js"></script>
{% endblock %}
{% block content %}
  <div class="container">
         <table id="table" class ="table table-striped table-bordered table-hover"
                data-toggle="table"
                data-ajax="ajaxRequest"
                data-search="false"
                data-side-pagination="server"
                data-pagination="true">
             <thead>
             <tr>
                 <th data-field="id">ID</th>
                 <th data-field="name">Item Name</th>
                 <th data-field="price">Item Price</th>
             </tr>
             </thead>
         </table>
  </div>
{% endblock %}
{% block scripts %}
<script type='text/javascript'>
  var $table = $('#table');
     function ajaxRequest(params) {
         setTimeout(function () {
             params.success({
                 total: 100,
                 rows: [{
                     "id": 0,
                     "name": "Item 0",
                     "price": "$0"
                 }]
             });
         }, 1000);
     }
</script>
{% endblock %}
