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
                    
                    <h5><span class="bold">Master Obat</span></h5>
                   
                  </div>
		<div class="modal-body">
			<form name="frmunitkrj" id="frmunitkrj" method="post" class="" onsubmit="register();return false;" enctype="multipart/form-data">
			
				<!-- START PANEL -->
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12">
								<div class="col-sm-6">
								  <div class="form-group form-group-default disabled">
									<label>Kode</label>
									<input type="text" name="txtkodeobat" placeholder="" class="form-control" disabled>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Kode Simak</label>
									<input type="text" name="txtkodesimak" placeholder="" class="form-control">
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Nama Barang</label>
									<input type="text" name="txtnamabarang" placeholder="" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default form-group-default-select2 required">
										<label class="">Kode Satuan Kecil</label>	
										<select class="full-width" data-placeholder="Pilih Kode Satuan Kecil" data-init-plugin="select2">
											<option value=""></option> 
											<option value="1">00M</option>
											<option value="2">0CM</option>
											<option value="3">ALKES</option>
											<option value="4">ALKS</option>
										</select>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Isi</label>
									<input type="text" name="txtisiobat" placeholder="Ct. Karawang" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default form-group-default-select2 required">
										<label class="">Formularium</label>	
										<select class="full-width" data-placeholder="Pilih Formularium" data-init-plugin="select2">
											<option value=""></option> 
											<option value="nasional">Formularium Nasional</option>
											<option value="nasionaldanrs">Formularium Nasional & RS</option>
											<option value="rs">Formularium RS</option>
											<option value="lainlain">Lain-Lain</option>
										</select>
								  </div>
								  
								  <div class="form-group form-group-default form-group-default-select2 required">
										<label class="">Material Group</label>	
										<select class="full-width" data-placeholder="Pilih Material Group" data-init-plugin="select2">
											<option value=""></option> 
											<option value="alatbalut">(1) Alat Balut</option>
											<option value="alatkesehatan">(2) Alat Kesehatan</option>
											<option value="alatkesehatangigi">(3) Alat Kesehatan Gigi</option>
											<option value="alatkesehatanlaboratorium">(4) Alat Kesehatan Laboratorium</option>
											<option value="alatbalut">(1) Alat Balut</option>
											<option value="alatkesehatan">(2) Alat Kesehatan</option>
											<option value="alatkesehatangigi">(3) Alat Kesehatan Gigi</option>
											<option value="alatkesehatanlaboratorium">(4) Alat Kesehatan Laboratorium</option>
											<option value="alatbalut">(1) Alat Balut</option>
											<option value="alatkesehatan">(2) Alat Kesehatan</option>
											<option value="alatkesehatangigi">(3) Alat Kesehatan Gigi</option>
											<option value="alatkesehatanlaboratorium">(4) Alat Kesehatan Laboratorium</option>
											<option value="alatbalut">(1) Alat Balut</option>
											<option value="alatkesehatan">(2) Alat Kesehatan</option>
											<option value="alatkesehatangigi">(3) Alat Kesehatan Gigi</option>
											<option value="alatkesehatanlaboratorium">(4) Alat Kesehatan Laboratorium</option>
										</select>
								  </div>
								  
								</div>
								
								
								<div class="col-sm-6">
									<div class="form-group form-group-default">
										<label>DpHo</label>
										<input type="text" name="txtdpho" placeholder="" class="form-control" required>
									</div>
									
									<div class="form-group form-group-default">
										<label>Keterangan</label>
										<textarea id="txtketerangan" type="text" name="txtketerangan" placeholder="" style="min-height: 80px" class="form-control disabled" ></textarea>
									</div>
									<div class="form-group form-group-default">
										<label>Isi Restricted</label>
										<input type="text" name="txtisirestricted" placeholder="" class="form-control" required>
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
             
            <!-- START PANEL -->
			<!-- Markup -->
			<div class="input-group transparent">
                      <span class="input-group-addon p-l-15 p-r-15">
                                <i class="fa fa-search"></i>
                            </span>
                      <input type="text" id="search-table" class="form-control p-t-20 p-b-20" placeholder="Masukan yang ingin anda cari...">
                    </div>
		
<div class="c-table">
<table class="table table-bordered table-hover" id="tableWithSearch">
     <thead>
        <tr>
            <th>Kode</th>
            <th style="min-width: 300px;">Nama Barang</th>
            <th>Kode Simak</th>
            <th>Kemasan</th>
            <th>KodeSatuanKecil</th>
            <th style="min-width: 200px;">Material Group</th>
            <th>Harga Terkini</th>
            <th>Isi</th>
            <th>Formularium</th>
            <th>DpHo</th>
            <th>Keterangan</th>
            <th>IsiRestricted</th>
            <th style="min-width: 200px;">Action</th>
        </tr>
    </thead>


    <tbody>
        <tr class="no-m">
            <td class="v-align-middle">'</td>
            <td class="v-align-middle">COROFLEX BLUE 4,0 X 16 MM</td>
            <td class="v-align-middle"></td>
            <td class="v-align-middle"></td>
            <td class="v-align-middle">PCS</td>
            <td class="v-align-middle">,(45)BARANG KONSINYASI,</td>
            <td class="v-align-middle">8712000</td>
            <td class="v-align-middle">0</td>
            <td class="v-align-middle">Lain-Lain</td>
            <td class="v-align-middle">-</td>
            <td class="v-align-middle">-</td>
            <td class="v-align-middle">0</td>
			<td class="v-align-middle"> <div class="pull-right">
				<button type="button" class="btn btn-info"><i class="fa fa-paste"></i></button>
				<button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i></button>
				</div>
			</td>
        </tr>
		
		
    </tbody>
</table>
</div>
<!-- Apply the plugin Disini -->


{% endblock %}