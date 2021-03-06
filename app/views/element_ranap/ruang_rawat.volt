{% extends 'template/aplous.volt' %}

{% block content %}
<form name="frmruranap" id="frmruranap" method="post" class="frmruranap" onsubmit="register();return false;" enctype="multipart/form-data">
	<div class="col-sm-12">
		<!-- START PANEL -->
        <div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-12">
						<div class="col-sm-2">
						  <div class="form-group form-group-default">
							<label>ID Ruang</label>
							<input type="text" name="txtruranapid" placeholder="" class="form-control" required>
						  </div>
						</div>
						<div class="col-sm-4">
						  <div class="form-group form-group-default">
							<label>Nama Ruang</label>
							<input type="text" name="txtruranapnama" placeholder="" class="form-control" required>
						  </div>
						</div> 
						
						
						<div class="col-sm-3">
						  <div class="form-group form-group-default form-group-default-select2 required">
							<label class="">Gedung</label>	
								<select class="full-width" data-placeholder="Pilih Gedung" data-init-plugin="select2">
								<option value=""></option>
								<option value="1">Gedung 1</option>
								<option value="2">Gedung 2</option>
								</select>
							</div>
						</div> 
						
						<div class="col-sm-3">
						  <div class="form-group form-group-default form-group-default-select2 required">
							<label class="">Lantai</label>	
								<select class="full-width" data-placeholder="Pilih Lantai" data-init-plugin="select2">
								<option value=""></option>
								<option value="1">Lantai 1</option>
								<option value="2">Lantai 2</option>
								</select>
							</div>
						</div> 
					</div>
				
				</div>
				
				<div class="row">
					<div class="col-sm-12">
					
						<div class="col-sm-6">
							<div class="form-group form-group-default form-group-default-select2 required">
							<label class="">Kelas</label>	
								<select class="full-width" data-placeholder="Pilih Kelas" data-init-plugin="select2">
								<option value=""></option>
								<option value="1">Kelas 1</option>
								<option value="2">Kelas 2</option>
								</select>
							</div>
						</div>
						<div class="col-sm-3">
						  <div class="form-group form-group-default">
							<label>Jml Tempat Tidur</label>
							<input type="text" name="txtruranapid" placeholder="" class="form-control" required>
						  </div>
						</div>
						<div class="col-sm-3">
						  <div class="form-group form-group-default form-group-default-select2 required">
						<label class="">Status</label>	
							<select class="full-width" data-placeholder="Pilih Status" data-init-plugin="select2">
							<option value=""></option>
							<option value="1">Aktif</option>
							<option value="2">Nonaktif</option>
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