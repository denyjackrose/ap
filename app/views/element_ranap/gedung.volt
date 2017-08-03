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
							<label>ID Gedung</label>
							<input type="text" name="txtklskode" placeholder="" class="form-control" required>
						  </div>
						</div>
						<div class="col-sm-4">
						  <div class="form-group form-group-default">
							<label>Nama Gedung</label>
							<input type="text" name="txtklstnama" placeholder="" class="form-control" required>
						  </div>
						</div> 
						
						
						<div class="col-sm-4">
						  <div class="form-group form-group-default">
							<label>Jumlah Lantai</label>
							<input type="text" name="txtkls" placeholder="" class="form-control" required>
						  </div>
						</div> 
					</div>
				
				</div>
				
				<div class="row">
					<div class="col-sm-12">
						<div class="col-sm-6">
						 <div class="form-group form-group-default form-group-default-select2 required">
						<label class="">Status</label>	
							<select id="getAmsk" class="full-width" data-placeholder="Pilih Status" data-init-plugin="select2">
							<option value=""></option>
							<option id="aktif" value="1">Aktif</option>
							<option id="nonaktif" value="2">Non Aktif</option>
							</select>
						  </div>
						</div>
						<div class="col-sm-6">
						  <div class="form-group form-group-default form-group-default-select2 required">
						<label class="">LS Ranap</label>	
							<select id="lsranap" class="full-width" data-placeholder="Pilih ls ranap" data-init-plugin="select2">
							<option value=""></option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							</select>
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