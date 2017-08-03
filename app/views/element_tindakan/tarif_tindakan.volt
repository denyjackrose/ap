{% extends 'template/aplous.volt' %}

{% block content %}
<!-- Button trigger modal -->

	<button class="btn-save btn btn-primary btn-lg" type="submit"  data-toggle="modal" data-target="#myModal"> Tambah Data</button>

				  
 <!-- Modal -->
<div class="modal fade fill-in" style="background:#fff!important" id="myModal" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false">
            <button type="button" class="btn btn-danger" style="z-index:999; position: absolute; top: 0px; right: 0px; margin:0!important; border-radius: 0px!important" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i>
            </button>
	<div class="modal-dialog " style="width: 100%!important;">
			
                  <div class="modal-header clearfix text-left">
                    
                    <h5><span class="bold">Master</span> Tindakan</h5>
                   
                  </div>
		<div class="modal-body">
			<form name="frmmastertindakan" id="frmmastertindakan" method="post" class="" onsubmit="register();return false;" enctype="multipart/form-data">
			
				<!-- START PANEL -->
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12">
								<div class="col-sm-6">
								  <div class="form-group form-group-default">
									<label>Kode Tindakan</label>
									<input type="text" name="txtkodetindakan" placeholder="" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Kelas Cost Center</label>	
									<select id="kelascostcenter" class="full-width" data-placeholder="Pilih Kelas Cost Center" data-init-plugin="select2">
									<option value=""></option> 
									<option value="1">Executive</option>
									<option value="2">Kelas 1</option>
									</select>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Bahan Alat</label>
									<input type="text" name="txtbahanalat" placeholder="" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Service Cost</label>
									<input type="text" name="txtservicecost" placeholder="" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Jasa Rumah Sakit</label>
									<input type="text" name="txtjasarumahsakit" placeholder="" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Jasa Pelayanan</label>
									<input type="text" name="txtjasapelayanan" placeholder="" class="form-control" required>
								  </div>
								  
								</div>
								
								<div class="col-sm-6">
								 <div class="form-group form-group-default">
									<label>Total</label>
									<input type="text" name="txttotal" placeholder="" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Instalasi</label>	
									<select id="instalasi" class="full-width" data-placeholder="Pilih Kelas Cost Center" data-init-plugin="select2">
									<option value=""></option> 
									<option value="1">Executive</option>
									<option value="2">Kelas 1</option>
									</select>
								  </div>
								  
								  <div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Poli</label>	
									<select id="poli" class="full-width" data-placeholder="Pilih Poli" data-init-plugin="select2">
									<option value=""></option> 
									<option value="1">Executive</option>
									<option value="2">Kelas 1</option>
									</select>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Anggaran Tahun</label>
									<input type="text" name="txtanggarantahun" placeholder="" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Status</label>
									<input type="text" name="txttariftindakanstatus" placeholder="" class="form-control" required>
								  </div>
								</div>
								
								
							</div>
						
						</div>
						
						
					<div class="pull-right">
					<button class="btn btn-info btn-lg btn-cons" type="reset" name="reset">Reset</button>
					<button class="btn btn-primary btn-lg btn-cons" type="submit" name="btnregister" id="btnregister">Simpan</button>
				</div>
					</div>
				</div>	
				
				
				
			
			</form>
		</div>
    </div>
</div>
          <!-- /.modal-dialog -->


         <form name="frmmastertindakan" id="frmmastertindakan" method="post" class="" onsubmit="register();return false;" enctype="multipart/form-data">
			
				<!-- START PANEL -->
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12">
							
								<div class="col-lg-3 col-md-6">
									<div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Instalasi</label>	
									<select id="getuk" class="full-width" data-placeholder="Pilih Instalasi" data-init-plugin="select2">
									<option value=""></option> 
									<option value="1">Rawat Jalan</option>
									<option value="2">Rawat Inap</option>
									</select>
								  </div>
								</div> 
								
								<div class="col-lg-3 col-md-6">
									<div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Poli</label>	
									<select id="getuk" class="full-width" data-placeholder="Pilih Poli" data-init-plugin="select2">
									<option value=""></option> 
									<option value="1">Anestesi</option>
									<option value="2">THT</option>
									</select>
								  </div>
								</div> 
								
								<div class="col-lg-2 col-md-6">
									<div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Tahun Anggaran</label>	
									<select id="getuk" class="full-width" data-placeholder="Pilih Tahun Anggaran" data-init-plugin="select2">
									<option value=""></option> 
									<option value="1">2017</option>
									<option value="2">2016</option>
									</select>
								  </div>
								</div> 
								
								<div class="col-lg-3 col-md-6">
									<div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Kelas</label>	
									<select id="getuk" class="full-width" data-placeholder="Pilih Kelas" data-init-plugin="select2">
									<option value=""></option> 
									<option value="1">Rawat Jalan</option>
									<option value="2">Kelas 1</option>
									</select>
								  </div>
								</div> 
								
								<div class="col-lg-1 col-md-12 col-sm-12">
									<div class="pull-right">
					<button class="btn btn-primary btn-lg m-t-5"  type="submit" name="submit">Cari</button>
					
				</div>
								</div> 
							</div>
						</div>
					
					</div>
				</div>	
				
				
				
			
			</form>
                <div class="clearfix"></div>
               
              <div class="panel-body">
                <div class="table-responsive">
                  <table class="table table-hover" id="basicTable">
                    <thead>
                      <tr>
                        <!-- NOTE * : Inline Style Width For Table Cell is Required as it may differ from user to user
											Comman Practice Followed
											-->
                        
                        <th style="width:30%">NM Tindakan Periksa</th>
                        <th style="width:25%">Jenis</th>
                        <th style="width:30%">Kriteria</th>
                        <th style="width:15%">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                       
                        <td class="v-align-middle ">
                          <p>DR.001</p>
                        </td>
						
                        <td class="v-align-middle">
                          <p>Poli Test</p>
                        </td>
						
                        <td class="v-align-middle">
                          <p>Pendaftaran</p>
                        </td>
						
                        <td class="v-align-middle">
                          <button type="button" class="btn btn-info"><i class="fa fa-search"></i>
                          </button>
						  
						  <button type="button" class="btn btn-danger"><i class="fa fa-pencil-square-o"></i>
                          </button>
                        </td>
                      </tr>
                      <tr>
                       
                        <td class="v-align-middle ">
                          <p>DR.001</p>
                        </td>
						
                        <td class="v-align-middle">
                          <p>Poli Test</p>
                        </td>
						
                        <td class="v-align-middle">
                          <p>Pendaftaran</p>
                        </td>
						
                        <td class="v-align-middle">
                          <button type="button" class="btn btn-info"><i class="fa fa-search"></i>
                          </button>
						  
						  <button type="button" class="btn btn-danger"><i class="fa fa-pencil-square-o"></i>
                          </button>
                        </td>
                      </tr>
					  
					  <tr>
                       
                        <td class="v-align-middle ">
                          <p>DR.001</p>
                        </td>
						
                        <td class="v-align-middle">
                          <p>Poli Test</p>
                        </td>
						
                        <td class="v-align-middle">
                          <p>Pendaftaran</p>
                        </td>
						
						
                        <td class="v-align-middle">
                          <button type="button" class="btn btn-info"><i class="fa fa-search"></i>
                          </button>
						  
						  <button type="button" class="btn btn-danger"><i class="fa fa-pencil-square-o"></i>
                          </button>
                        </td>
                      </tr>
					  
					  <tr>
                       
                        <td class="v-align-middle ">
                          <p>DR.001</p>
                        </td>
						
                        <td class="v-align-middle">
                          <p>Poli Test</p>
                        </td>
						
                        <td class="v-align-middle">
                          <p>Pendaftaran</p>
                        </td>
						
						
                        <td class="v-align-middle">
                          <button type="button" class="btn btn-info"><i class="fa fa-search"></i>
                          </button>
						  
						  <button type="button" class="btn btn-danger"><i class="fa fa-pencil-square-o"></i>
                          </button>
                        </td>
                      </tr>
					  
					  <tr>
                       
                        <td class="v-align-middle ">
                          <p>DR.001</p>
                        </td>
						
                        <td class="v-align-middle">
                          <p>Poli Test</p>
                        </td>
						
                        <td class="v-align-middle">
                          <p>Pendaftaran</p>
                        </td>
						
						
                        <td class="v-align-middle">
                          <button type="button" class="btn btn-info"><i class="fa fa-search"></i>
                          </button>
						  
						  <button type="button" class="btn btn-danger"><i class="fa fa-pencil-square-o"></i>
                          </button>
                        </td>
                      </tr> 
                    </tbody>
                  </table>
                </div>
              </div>

{% endblock %}