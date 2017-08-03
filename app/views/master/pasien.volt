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
                    
                    <h5><span class="bold">Input Data Pasien</span></h5>
                   
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
									<label>No.RM</label>
									<input type="text" name="txtunitkrjkode" placeholder="<< Otomatis >>" class="form-control" disabled>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>No. Identitas</label>
									<input type="text" name="txtnoidentitas" placeholder="Ct. 321501290000000" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Nama</label>
									<input type="text" name="txtnama" placeholder="Ct. Mukidi" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Tempat Lahir</label>
									<input type="text" name="txttempatlahir" placeholder="Ct. Karawang" class="form-control" required>
								  </div>
								  
								  <div class="form-group form-group-default form-group-default-select2 required">
										<label class="">Jenis Kelamin</label>	
										<select class="full-width" data-placeholder="Pilih Jenis Kelamin" data-init-plugin="select2">
											<option value=""></option> 
											<option value="1">Laki-Laki</option>
											<option value="2">Perempuan</option>
										</select>
								  </div>
								  
								  <div class="form-group form-group-default form-group-default-select2 required">
										<label class="">Golongan Darah</label>	
										<select class="full-width" data-placeholder="Pilih Golongan Darah" data-init-plugin="select2">
											<option value=""></option> 
											<option value="a">A</option>
											<option value="b">B</option>
											<option value="ab">AB</option>
											<option value="o">O</option>
										</select>
								  </div>
								  
								  <div class="form-group form-group-default">
									<label>Alamat</label>
									<textarea type="text" name="txtalamat" placeholder="" class="form-control" style="height: 100px" required></textarea>
								  </div>
										<div class="row">
											<div class="col-md-4 col-sm-12">
												<div class="form-group form-group-default">
													<label>RT</label>
													<input type="text" name="txtrt" placeholder="" class="form-control" required>
												</div>
											</div>
											<div class="col-md-4 col-sm-12">	  									  
												<div class="form-group form-group-default">
													<label>RW</label>
													<input type="text" name="txtrw" placeholder="" class="form-control" required>
												</div>
											</div>
											<div class="col-md-4 col-sm-12">
												<div class="form-group form-group-default">
													<label>Kode Pos</label>
													<input type="text" name="txtkodepos" placeholder="" class="form-control" required>
												</div> 
											</div>
										</div>
									
								  
									<div class="form-group form-group-default">
										<label>No. Telepon</label>
										<input type="text" id="phone" name="txtnotelepon" placeholder="0267-8453-111" class="form-control" >
										
									</div>
									
									<div class="form-group form-group-default">
										<label>No.HP</label>
										<input type="text" name="txtnohp" placeholder="Ct. 08123456789" class="form-control" required>
									</div>
								</div>
								
								
								<div class="col-sm-6">
								<div class="form-group form-group-default">
										<label>Kelurahan</label>
										<input type="text" name="txtkelurahan" placeholder="Ct. Adiarsa" class="form-control" required>
									</div>
									<div class="form-group form-group-default">
										<label>Kecamatan</label>
										<input type="text" name="txtkecamatan" placeholder="Ct. Karawang Barat" class="form-control" required>
									</div>
									<div class="form-group form-group-default">
										<label>Kota</label>
										<input type="text" name="txtkota" placeholder="Ct. Karawang" class="form-control" required>
									</div>
									<div class="form-group form-group-default">
										<label>Provinsi</label>
										<input type="text" name="txtprovinsi" placeholder="Ct. Jawa Barat" class="form-control" required>
									</div>
									
									<div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Pekerjaan</label>	
										<select id="getuk" class="full-width" data-placeholder="Pilih Pekerjaan" data-init-plugin="select2">
											<option value=""></option>
											<option value="1">Pegawai Swasta</option> 
											<option value="2">Pegawai BUMN</option> 
											<option value="3">Pegawai Negeri Sipil (PNS)</option> 
											<option value="4">Pensiunan</option> 
											<option value="5">Wiraswasta</option> 
											<option value="6">Ibu Rumah Tangga</option> 
											<option value="7">Pelajar</option> 
											<option value="8">Belum Bekerja</option> 
											<option value="9">Lain-Lain</option> 
										</select>
									</div>
									
									<div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Agama</label>	
										<select class="full-width" data-placeholder="Pilih Agama" data-init-plugin="select2">
											<option value=""></option>
											<option value="1">Islam</option>
											<option value="2">Kristen</option>
											<option value="3">Hindu</option>
											<option value="4">Budha</option>
											<option value="5">Lainnya</option>
										</select>
									</div>
									
									<div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Status Perkawinan</label>	
										<select class="full-width" data-placeholder="Pilih Status" data-init-plugin="select2">
											<option value=""></option>
											<option value="1">Lajang</option>
											<option value="2">Menikah</option>
											<option value="3">Cerai</option>
										</select>
									</div>
									
									
									
									<div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Pendidikan</label>	
										<select class="full-width" data-placeholder="Pilih Pendidikan" data-init-plugin="select2">
											<option value=""></option>
											<option value="1">BELUM SEKOLAH</option>
											<option value="2">TK</option>
											<option value="3">SD</option>
											<option value="4">SMP</option>
											<option value="5">SMA/SEDERAJAT</option>
											<option value="6">DIPLOMA 1</option>
											<option value="7">DIPLOMA 3</option>
											<option value="8">SARJANA (S1)</option>
											<option value="9">PASCASARJANA (S2)</option>
											<option value="10">DOKTOR (S3)</option>
										</select>
									</div>
									
									
									
									<div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Warga Negara</label>	
										<select class="full-width" data-placeholder="Pilih Warga Negara" data-init-plugin="select2">
											<option value=""></option>
											<option value="1">Indonesia</option>
											<option value="2">Malaysia</option>
											<option value="3">Singapura</option>
											<option value="4">Brunei Darussalam</option>
											<option value="5">China</option>
										</select>
									</div>
									
									<div class="form-group form-group-default form-group-default-select2 required">
									<label class="">Suku Bangsa</label>	
										<select class="full-width" data-placeholder="Pilih Suku Bangsa" data-init-plugin="select2">
											<option value=""></option>
											<option value="1">Jawa</option>
											<option value="2">Sunda</option>
											<option value="3">Arab</option>
											<option value="4">Banten</option>
											<option value="5">Lainnya</option>
										</select>
									</div>
								
									<div class="checkbox check-warning m-t-10 m-b-10">
										<input id="chkboxkerabat" type="checkbox" value="1">
										<label for="chkboxkerabat">Alamat Kerabat Sama</label>
									</div>
									<div class="form-group form-group-default">
										<label>Alamat Kerabat</label>
										<textarea id="txtalamatkerabat" type="text" name="txtalamatkerabat" placeholder="Ct. Jln. Niaga" style="min-height: 80px" class="form-control disabled" ></textarea>
									</div>
									
									<div class="form-group form-group-default">
										<label>No. Kartu BPJS</label>
										<input type="text" name="txtnobpjs" placeholder="Ct. xxxxxxxxxxxxxxxx" class="form-control" required>
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
            <th>No. RM</th>
            <th>Nama Pasien</th>
            <th>L/P</th>
            <th>Tempat Lahir</th>
            <th>Tanggal Lahir</th>
            <th>Alamat</th>
            <th>Action</th>
        </tr>
    </thead>


    <tbody>
        <tr class="no-m">
            <td class="v-align-middle">2310873</td>
            <td class="v-align-middle">Sri Wati</td>
            <td class="v-align-middle">P</td>
            <td class="v-align-middle">CILACAP</td>
            <td class="v-align-middle">26-06-1984</td>
            <td class="v-align-middle">Jln. Cimaragas</td>
			<td class="v-align-middle"> <div class="pull-right">
				<button type="button" class="btn btn-info"><i class="fa fa-paste"></i></button>
				<button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i></button>
				</div>
			</td>
        </tr>
		<tr class="no-m">
            <td class="v-align-middle">2310873</td>
            <td class="v-align-middle">Sri Wati</td>
            <td class="v-align-middle">P</td>
            <td class="v-align-middle">CILACAP</td>
            <td class="v-align-middle">26-06-1984</td>
            <td class="v-align-middle">Jln. Cimaragas</td>
			<td class="v-align-middle"> <div class="pull-right">
				<button type="button" class="btn btn-info"><i class="fa fa-paste"></i></button>
				<button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i></button>
				</div>
			</td>
        </tr>
		
		<tr class="no-m">
            <td class="v-align-middle">2310873</td>
            <td class="v-align-middle">Sri Wati</td>
            <td class="v-align-middle">P</td>
            <td class="v-align-middle">CILACAP</td>
            <td class="v-align-middle">26-06-1984</td>
            <td class="v-align-middle">Jln. Cimaragas</td>
			<td class="v-align-middle"> <div class="pull-right">
				<button type="button" class="btn btn-info"><i class="fa fa-paste"></i></button>
				<button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i></button>
				</div>
			</td>
        </tr>
		
		<tr class="no-m">
            <td class="v-align-middle">2310873</td>
            <td class="v-align-middle">Sri Wati</td>
            <td class="v-align-middle">P</td>
            <td class="v-align-middle">CILACAP</td>
            <td class="v-align-middle">26-06-1984</td>
            <td class="v-align-middle">Jln. Cimaragas</td>
			<td class="v-align-middle"> <div class="pull-right">
				<button type="button" class="btn btn-info"><i class="fa fa-paste"></i></button>
				<button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i></button>
				</div>
			</td>
        </tr>
		
		<tr class="no-m">
            <td class="v-align-middle">2310873</td>
            <td class="v-align-middle">Sri Wati</td>
            <td class="v-align-middle">P</td>
            <td class="v-align-middle">CILACAP</td>
            <td class="v-align-middle">26-06-1984</td>
            <td class="v-align-middle">Jln. Cimaragas</td>
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
<script>
$(document).ready(function() {
    $("#phone").mask("(999) 999-9999");
});
</script>

{% endblock %}