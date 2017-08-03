{% extends 'template/aplous.volt' %}

{% block content %}
<form name="frmuser" id="frmuser" method="post" class="frmuser" onsubmit="register();return false;" enctype="multipart/form-data">
	<div class="col-sm-6">
		<!-- START PANEL -->
        <div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
                <div class="col-sm-6">
                  <div class="form-group form-group-default">
                    <label>Nama Belakang</label>
                    <input type="text" name="txtnamabelakang" placeholder="John" class="form-control" required>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group form-group-default">
                    <label>Nama Depan</label>
                    <input type="text" name="txtnamadepan" placeholder="Smith" class="form-control" required>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-12">
                  <div class="form-group form-group-default">
                    <label>Username</label>
                    <input type="text" name="txtusername" placeholder="example_contoh (tidak menggunakan spasi)" class="form-control" required>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-12">
                  <div class="form-group form-group-default">
                    <label>Password</label>
                    <input type="password" name="txtpassword" placeholder="Minimal 4 karakter" class="form-control" required>
                  </div>
                </div>
              </div>
              <div class="form-group form-group-default form-group-default-select2">
                    <label class="">Instalasi</label>
                     <select class="full-width" data-placeholder="pilih instalasi" data-init-plugin="select2" name="cmbinstalasi">
						<optgroup label="Alaskan/Hawaiian Time Zone">
							<option value="">-</option>
							<option value="RJ">Rawat Jalan</option>
							<option value="RI">Rawat Inap</option>
							<option value="IGD">IGD</option>
							<option value="MCU">MCU</option>
							<option value="FA">FARMASI</option>
						</optgroup>
                    </select>
                </div>
				<div class="form-group form-group-default form-group-default-select2">
                    <label class="">Poli</label>
                     <select class="full-width" data-placeholder="pilih poli" data-init-plugin="select2" name="cmbpoli">
						<optgroup label="Alaskan/Hawaiian Time Zone">
							<option value="">-</option>
							<option value="BE">Bedah</option>
							<option value="MA">Mata</option>
							<option value="PA">Paru</option>
							<option value="GI">Gizi</option>
						</optgroup>
                    </select>
                </div>
			</div>
		</div>
	</div>
	
	<div class="col-sm-6">
		<!-- START PANEL -->
        <div class="panel panel-default">
			<div class="panel-heading">
                <div class="panel-title">Hak Akses Group
                </div>
                <div class="tools">
                  <a class="collapse" href="javascript:;"></a>
                  <a class="config" data-toggle="modal" href="#grid-config"></a>
                  <a class="reload" href="javascript:;"></a>
                  <a class="remove" href="javascript:;"></a>
                </div>
              </div>
			<div class="panel-body">
				<div class="checkbox check-success">
                      <input type="checkbox" value="1" id="checkbox1" name="checkbox1">
                      <label for="checkbox1">Admin</label>
                    </div>
                    <div class="checkbox check-success  ">
                      <input type="checkbox"  value="1" id="checkbox2" name="checkbox2">
                      <label for="checkbox2">Pendafataran Pasien</label>
                    </div>
                    <div class="checkbox check-success">
                      <input type="checkbox" value="1" id="checkbox3" name="checkbox3">
                      <label for="checkbox3">Pendaftaran User</label>
                    </div>
                    <div class="checkbox check-success">
                      <input type="checkbox" value="1" id="checkbox4" name="checkbox4">
                      <label for="checkbox4">Rawat Jalan</label>
                    </div>
                    <div class="checkbox check-success">
                      <input type="checkbox"  value="1" id="checkbox5" name="checkbox5">
                      <label for="checkbox5">Rekam Medis</label>
                    </div>
                    <div class="checkbox check-success">
                      <input type="checkbox"  value="1" id="checkbox6" name="checkbox6">
                      <label for="checkbox6">Rawat Inap</label>
                    </div>
					<div class="checkbox check-success">
                      <input type="checkbox"  value="1" id="checkbox7" name="checkbox7">
                      <label for="checkbox6">Dokter</label>
                    </div>
              <div class="row m-t-10">
                <div class="col-md-6">
                  <p>I agree to the <a href="#" class="text-info small">Pages Terms</a> and <a href="#" class="text-info small">Privacy</a>.</p>
                </div>
                <div class="col-md-6 text-right">
                  <a href="#" class="text-info small">Help? Contact Support</a>
                </div>
              </div>
              </div>
		</div>
	</div>
	<button class="btn-rst btn btn-info btn-lg" type="reset" name="reset">Reset</button>
	<button class="btn-save btn btn-primary btn-lg" type="submit" name="btnregister" id="btnregister"> Tambah</button>
	
</form>

<script type="text/javascript">
 function register()
 {
			var data = $('#frmuser').serialize();
			$.ajax({
                type:"POST",
                url:"{{ url('User/register') }}",
                data:data,
                success:function(response)
				{
					if( response==1 )
					{
						swal({ 
                            title: "Transaksi Berhasil!", 
                            text: "I will close in 2 seconds.",
                            timer: 2000,
                            type: "success"
									
                        }); 
						window.location.href='http://localhost/ap/user';
					}
					else
					{
						sweetAlert("Pendaftaran GAGAL!", "", "error");
					}
                },
				error:function()
				{
					sweetAlert("Error!", "", "error");
				}
            });
 }
 </script>

{% endblock %}