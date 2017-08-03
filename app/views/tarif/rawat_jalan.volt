{% extends 'template/aplous.volt' %}

{% block content %}
<form name="frmrajal" id="frmrajal" method="post" class="frmrajal" onsubmit="register();return false;" enctype="multipart/form-data">
	<div class="col-sm-12">
		<!-- START PANEL -->
        <div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-12">
						<div class="col-sm-6">
						  <div class="form-group form-group-default">
							<label>Kode</label>
							<input type="text" name="txtrajalkode" placeholder="" class="form-control" required>
						  </div>
						</div>
						<div class="col-sm-6">
						  <div class="form-group form-group-default">
							<label>Tindakan </label>
							<input type="text" name="txtrajaltdkn" placeholder="" class="form-control" required>
						  </div>
						</div> 
					</div>
				
				</div>
				
				
				<div class="row">
					<div class="col-sm-12">
						<div class="col-sm-3">
						  <div class="form-group form-group-default input-group transparent">
							
							<span class="input-group-addon">Rp.
							</span>
							<label>Total Umum</label>
							<input type="text" name="txtrajaltotum" placeholder="" class="form-control" required>
						  </div>
						</div> 
						<div class="col-sm-3">
						  <div class="form-group form-group-default input-group transparent">
							
							<span class="input-group-addon">Rp.
							</span>
							<label>Total Khusus</label>
							<input type="text" name="txtrajaltokhs" placeholder="" class="form-control" required>
						  </div>
						</div>
						
						<div class="col-sm-6">
						  <div class="form-group form-group-default input-group transparent">
							<span class="input-group-addon">Rp.
							</span>
							<label>Total Executive</label>
							<input type="text" name="txtrajaltotex" placeholder="" class="form-control" required>
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