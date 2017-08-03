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
                    
                    <h5><span class="bold">Unit Kerja</span> Sub</h5>
                   
                  </div>
		<div class="modal-body">
			<form name="frmunitkrj" id="frmunitkrj" method="post" class="" onsubmit="register();return false;" enctype="multipart/form-data">
			
				<!-- START PANEL -->
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12">
								<div class="col-sm-6">
								  <div class="form-group form-group-default">
									<label>Kode Sub Unit Kerja</label>
									<input type="text" name="txtunitkrjkode" placeholder="" class="form-control" required>
								  </div>
								</div>
								<div class="col-sm-6">
								 <div class="form-group form-group-default form-group-default-select2 required">
								<label class="">Unit Kerja</label>	
									<select id="getuk" class="full-width" data-placeholder="Pilih Unit Kerja" data-init-plugin="select2">
									<option value=""></option> 
									<option value="1">Pendaftaran</option>
									<option value="2">Bagian Umum</option>
									</select>
								  </div>
								</div>
								
								
							</div>
						
						</div>
						
						<div class="row">
							<div class="col-sm-12">
								<div class="col-sm-6">
								  <div class="form-group form-group-default">
									<label>Nama Sub Unit Kerja</label>
									<input type="text" name="txtunitkrjtnama" placeholder="" class="form-control" required>
								  </div>
								</div> 
								<div class="col-sm-6">
									<div class="form-group required">
										<label>Flag Sub Unit Kerja </label>
										<div class="radio radio-success">
										
											  <input type="radio" value="poli" name="opsiunit" id="poli">
											  <label for="poli">Poli</label>
											  <input type="radio" checked="checked" value="irna" name="opsiunit" id="irna">
											  <label for="irna">Lantai IRNA</label>
										</div>
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


         
                <div class="clearfix"></div>
               
              <div class="panel-body">
                <div class="table-responsive">
                  <table class="table table-hover" id="basicTable">
                    <thead>
                      <tr>
                        <!-- NOTE * : Inline Style Width For Table Cell is Required as it may differ from user to user
											Comman Practice Followed
											-->
                        
                        <th style="width:20%">Kode</th>
                        <th style="width:20%">Nama Sub Unit Kerja</th>
                        <th style="width:30%">Unit Kerja</th>
                        <th style="width:15%">Flag</th>
                        <th style="width:15%">Setting</th>
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
                          <p>POLI</p>
                        </td>
						
                        <td class="v-align-middle">
                          <button type="button" class="btn btn-info"><i class="fa fa-paste"></i>
                          </button>
						  
						  <button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i>
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
                          <p>POLI</p>
                        </td>
						
                        <td class="v-align-middle">
                          <button type="button" class="btn btn-info"><i class="fa fa-paste"></i>
                          </button>
						  
						  <button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i>
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
                          <p>POLI</p>
                        </td>
						
                        <td class="v-align-middle">
                          <button type="button" class="btn btn-info"><i class="fa fa-paste"></i>
                          </button>
						  
						  <button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i>
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
                          <p>POLI</p>
                        </td>
						
                        <td class="v-align-middle">
                          <button type="button" class="btn btn-info"><i class="fa fa-paste"></i>
                          </button>
						  
						  <button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i>
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
                          <p>POLI</p>
                        </td>
						
                        <td class="v-align-middle">
                          <button type="button" class="btn btn-info"><i class="fa fa-paste"></i>
                          </button>
						  
						  <button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i>
                          </button>
                        </td>
                      </tr> 
                    </tbody>
                  </table>
                </div>
              </div>

{% endblock %}