{% extends 'template/aplous.volt' %}

{% block content %}
<form name="frmkls" id="frmkls" method="post" class="frmkls" onsubmit="register();return false;" enctype="multipart/form-data">
	<div class="col-sm-12">
		<!-- START PANEL -->
        <div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-12">
						<div class="col-sm-4">
						  <div class="form-group form-group-default">
							<label>ID Kelas</label>
							<input type="text" name="txtklskode" placeholder="" class="form-control" required>
						  </div>
						</div>
						<div class="col-sm-4">
						  <div class="form-group form-group-default">
							<label>Nama Kelas</label>
							<input type="text" name="txtklstnama" placeholder="" class="form-control" required>
						  </div>
						</div> 
						
						
						<div class="col-sm-4">
						  <div class="form-group form-group-default">
							<label>Urutan</label>
							<input type="text" name="txtklsurtn" placeholder="" class="form-control" required>
						  </div>
						</div> 
					</div>
				
				</div>
				
				
				
              </div>
		</div>	
	</div>
	
	<button class="btn-rst btn btn-info btn-lg" type="reset" name="reset">Reset</button>
	<button class="btn-save btn btn-primary btn-lg" type="submit" name="btnregister" id="btnregister"> Tambah</button>
	
	
</form>
{% endblock %}