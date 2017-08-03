{% extends 'template/aplous.volt' %}

{% block content %}
<form name="frmPmbyrn" id="frmPmbyrn" method="post" class="frmPmbyrn" onsubmit="register();return false;" enctype="multipart/form-data">
	<div class="col-sm-12">
		<!-- START PANEL -->
        <div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
				
                <div class="col-sm-6">
					<div class="form-group form-group-default form-group-default-select2 required">
						<label class="">Nama Gedung</label>	
							<select id="getPmbyrn" class="full-width" onchange="jmnSelect(this);"data-placeholder="Pilih Jenis Pembayaran" data-init-plugin="select2">
							<option value=""></option>
							<option id="optnonJmn" value="1">Non Jaminan / Umum</option>
							<option id="optJmn" value="2">Jaminan</option>
							</select>


						
							
					</div>
					
				</div>
				
				 <div id="nonjmnCheck" class="col-sm-6"  style="display: none;">
                  <div class="form-group form-group-default">
                    <label>Pembayaran Non Penjamin</label>
                    <input type="text" name="txtnonjmn" placeholder="cth. Umum" class="form-control" required>
                  </div>
                </div> 
				
                <div id="jmnCheck" class="col-sm-6"  style="display: none;">
                  <div class="form-group form-group-default">
                    <label>Nama Penjamin</label>
                    <input type="text" name="txtjmn" placeholder="cth. BPJS" class="form-control" required>
                  </div>
                </div>
               
				
              </div>
             
			</div>
		</div>
	</div>
	
	<button class="btn-rst btn btn-info btn-lg" type="reset" name="reset">Reset</button>
	<button class="btn-save btn btn-primary btn-lg" type="submit" name="btnregister" id="btnregister"> Tambah</button>
	
	
</form>
<script type="text/javascript">
    function jmnSelect(pilihJmn)
	{
		if(pilihJmn){
			optJmnValue = document.getElementById("optJmn").value;
			if(optJmnValue == pilihJmn.value){
				document.getElementById("jmnCheck").style.display = "block";
			}
			else{
				document.getElementById("jmnCheck").style.display = "none";
			}
		}
		else{
			document.getElementById("jmnCheck").style.display = "none";
		}
		
		if(pilihJmn){
			optJmnValue = document.getElementById("optnonJmn").value;
			if(optJmnValue == pilihJmn.value){
				document.getElementById("nonjmnCheck").style.display = "block";
			}
			else{
				document.getElementById("nonjmnCheck").style.display = "none";
			}
		}
		else{
			document.getElementById("nonjmnCheck").style.display = "none";
		}
	}
	
	
	


	
	
</script>
<script type="text/javascript">
 function register()
 {
			var data = $('#frmamsk').serialize();
			$.ajax({
                type:"POST",
                url:"{{ url('Akses-masuk/register') }}",
                data:data,
                success:function(response)
				{
					if( response==1 )
					{
						swal({ 
                            title: "Transaksi Berhasil!", 
                            text: "I will close in 5 seconds.",
                            timer: 5000,
                            type: "success"
									
                        }); 
						window.location.href='http://localhost/ap/poli';
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