{% extends 'template/index.volt' %}

{% block content %}
 
 <div class="breadcrumbs" id="breadcrumbs">
	<script type="text/javascript">
		try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
	</script>

	<ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-home home-icon"></i>
				<a href="{{ url('Index') }}">Home</a>
		</li>
		<li class="active"><a href="{{ url('Modul') }}">Modul</a></li>
	</ul><!-- /.breadcrumb -->
</div>
		<!-- PAGE CONTENT BEGINS -->
		<div class="page-header">
			<div class=form-group>
				<a href="new" class="btn btn-success btn-sm">
					<i class="ace-icon fa fa-plus"></i>
					New
				</a>
			</div>
			
		</div><!-- /.page-header -->
		<div class="row">
			<div class="col-xs-12">
				<!-- PAGE CONTENT BEGINS -->
	<table>
		<tr>
			<td>
				<div class="form-group">
					<label class="col-sm-4 control-label no-padding-right" for="form-field-modName">Nama Modul</label>
					<div class="col-sm-8">
						<input style='width:200%' type="hidden" class="form-control input-sm" name="oid" id="oid" value='<?php echo $objectid;?>'>
						<input style='width:200%' type="text" class="form-control input-sm" name="modName" id="modName" value='<?php echo $modName;?>'>
					</div>
				</div>
			</td>
		</tr>
		<tr><td >&nbsp;</td><td >&nbsp;</td></tr>
		<tr>
			<td>		
				<div class="form-group">
					<label class="col-sm-4 control-label no-padding-right" for="form-field-link">Link</label>
					<div class="col-sm-8">
						<input style='width:200%' type="text" class="form-control input-sm" name="link" id="link" value='<?php echo $link;?>'>
					</div>
				</div>
			</td>
		</tr>
		<tr><td >&nbsp;</td><td >&nbsp;</td></tr>
		<tr>
			<td>		
				<div class="form-group">
					<label class="col-sm-4 control-label no-padding-right" for="form-field-link">Aktif</label>
					<div class="col-sm-8">
							<label>
							<input type="radio" class="ace" name='aktif' id='aktif' value="Y"<?php if ( $aktif == 'Y' ){ echo ' checked="1"';}?>/>
							<span class="lbl"> Y</span>
							</label>
							<label>
								<input type="radio" class="ace" name='aktif' id='aktif' value="N"<?php if ( $aktif == 'N' ){ echo ' checked="1"';}?>/>
								<span class="lbl"> N</span>
							</label>
						
						
					</div>
				</div>
			</td>
		</tr>
		<tr><td >&nbsp;</td><td >&nbsp;</td></tr>
		<tr>
			<td>		
				<div class="form-group">
					<label class="col-sm-4 control-label no-padding-right" for="form-field-icon">Icon Menu</label>
					<div class="col-sm-8">
						<input style='width:200%' type="text" class="form-control input-sm" name="icon" id="icon" value='<?php echo $icon;?>'>
						<a href="http://fontawesome.io/icons/" class="col-sm-8 control-label no-padding-right" for="form-field-icon">
						<i class="ace-icon fa fa-search-plus bigger-130"></i>search icons</a>
					</div>
				</div>
			</td>
		</tr>
		<tr><td >&nbsp;</td><td >&nbsp;</td></tr>
		<tr>
			<td>		
				<div class="form-group">
					<label class="col-sm-4 control-label no-padding-right" for="form-field-urutan">Urutan</label>
					<div class="col-sm-8">
						<input style="width:50%" type="text" class="form-control input-sm" name="urutan" id="urutan" value='<?php echo $urutan;?>'>
					</div>
				</div>
			</td>
		</tr>
		<tr><td >&nbsp;</td><td>&nbsp;</td></tr>
		<tr>
			<td>
				<input  class='btn btn-sm btn-primary' id='btnupdate' type="button" value=Update>
				&nbsp;&nbsp;<input class='btn btn-sm' type=button value=Cancel onclick=self.history.back()>
			</td>
		</tr>
	</table>
			</div>
		</div>
<script type="text/javascript">
    $(document).ready(function() {
        $("#btnupdate").click(function() {
			var oid = $("#oid").val();
            var modName = $("#modName").val();
			var link = $("#link").val();
			var icon = $("#icon").val();
			var urutan = $("#urutan").val();
			var aktif = $("input[name='aktif']:checked").val();

            $.ajax({
                type:"POST",
                url:"{{ url('Modul/update') }}",
                data:{oid:oid,modName:modName,link:link,icon:icon,urutan:urutan,aktif:aktif},
                success:function(response)
				{
					if(response==1)
					{
						alert("data berhasil dirubah");
						window.location.href='http://localhost/wpos/modul';
					}
					else
					{
						alert("data gagal dirubah")
					}
                },
				error:function()
				{
					alert("error")  ;
				}
            });
        });
    });
 </script>


  {% endblock %}
 