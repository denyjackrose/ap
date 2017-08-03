{% extends 'template/aplous.volt' %}

{% block content %}
<form name="frmigd" id="frmigd" method="post" class="frmigd" onsubmit="register();return false;" enctype="multipart/form-data">
	<div class="col-sm-12">
		<!-- START PANEL -->
        <div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-12">
						<div class="col-sm-6">
						  <div class="form-group form-group-default">
							<label>Kode</label>
							<input type="text" name="txtigdkode" placeholder="" class="form-control" required>
						  </div>
						</div>
						<div class="col-sm-6">
						  <div class="form-group form-group-default">
							<label>Tindakan <?php echo $ctrlname; ?></label>
							<input type="text" name="txtigdtdkn" placeholder="" class="form-control" required>
						  </div>
						</div> 
					</div>
				
				</div>
				
				
				<div class="row">
					<div class="col-sm-12">
						<div class="col-sm-3">
						  <div class="form-group form-group-default">
							<label>JP</label>
							<input type="text" name="txtigdtdkn" placeholder="" class="form-control" required>
						  </div>
						</div> 
						<div class="col-sm-3">
						  <div class="form-group form-group-default">
							<label>JS</label>
							<input type="text" name="txtigdtdkn" placeholder="" class="form-control" required>
						  </div>
						</div>
						
						<div class="col-sm-6">
						  <div class="form-group form-group-default">
							<label>Total</label>
							<input type="text" name="txtigdtdkn" placeholder="" class="form-control" required>
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