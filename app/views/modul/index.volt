{% extends 'template/index.volt' %}

{% block content %}

 <div class="breadcrumbs" id="breadcrumbs">
	<script type="text/javascript">
		try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
	</script>

	<ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-home home-icon"></i>
				<a href="http://localhost/wpos">Home</a>
		</li>
		<li class="active"><a href='http://localhost/wpos/modul'>Modul</a></li>
	</ul><!-- /.breadcrumb -->
</div>
		<!-- PAGE CONTENT BEGINS -->
		<div class="page-header">
			<div class=form-group>
				<a href="modul/new" class="btn btn-success btn-sm">
					<i class="ace-icon fa fa-plus"></i>
					New
				</a>
			</div>
			
		</div><!-- /.page-header -->
		<div class="row">
			<div class="col-xs-12">
				<!-- PAGE CONTENT BEGINS -->
		<table data-toggle="table"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">


    <thead>
        <tr>
            <th data-sortable="true" class='center'>Nama</th>
            <th data-sortable="true" class='center'>Icon</th>
            <th data-sortable="true" class='center'>Link</th>
			<th data-sortable="true" class='center'>Urutan</th>
			<th data-sortable="true" class='center'>Aktif</th>
			<th class='center'></th>
        </tr>
    </thead>
	{% for datas in datax %}
        <tr>
            <td>{{ datas.modName }}</td>
            <td>{{ datas.icon }}</td>
            <td>{{ datas.link }}</td>
			<td>{{ datas.urutan }}</td>
			<td>{{ datas.aktif }}</td>
			<td> 
				<a href="{{ url('modul/view/' ~ datas.objectid) }}" class="btn btn-xs btn-info"><i class="ace-icon fa fa-pencil"></i></a>
				<a href="{{ url('modul/delete/' ~ datas.objectid) }}" class="btn btn-xs btn-danger"><i class="ace-icon fa fa-trash-o"></i></a>
			</td>
        </tr>
{% endfor %}

    </table>
			</div>
		</div>
 
 {% endblock %}
 