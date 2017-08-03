{% extends 'template/aplous.volt' %}

{% block content %}
<form name="frmamsk" id="frmamsk" method="post" class="frmamsk" onsubmit="register();return false;" enctype="multipart/form-data">
	<div class="col-sm-12">
		<!-- START PANEL -->
        <div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
				
                <div class="col-sm-6">
					<div class="form-group form-group-default form-group-default-select2 required">
						<label class="">Akses Masuk</label>	
							<select id="getAmsk" class="full-width" onchange="rjkSelect(this);"data-placeholder="Pilih Akses Masuk" data-init-plugin="select2">
							<option value=""></option>
							<option id="optnonRjk" value="1">Non Rujukan</option>
							<option id="optRjk" value="2">Rujukan</option>
							</select>


						
							
					</div>
					
				</div>
				
				 <div id="nonrjkCheck" class="col-sm-6"  style="display: none;">
                  <div class="form-group form-group-default">
                    <label>Cara Masuk Non Rujukan</label>
                    <input type="text" name="txtnonrjk" placeholder="cth. Datang Langsung" class="form-control" required>
                  </div>
                </div> 
				
                <div id="rjkCheck" class="col-sm-6"  style="display: none;">
                  <div class="form-group form-group-default">
                    <label>Cara Masuk Rujukan</label>
                    <input type="text" name="txtrjk" placeholder="cth. Puskesmas" class="form-control" required>
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
    function rjkSelect(pilihRjk)
	{
		if(pilihRjk){
			optRjkValue = document.getElementById("optRjk").value;
			if(optRjkValue == pilihRjk.value){
				document.getElementById("rjkCheck").style.display = "block";
			}
			else{
				document.getElementById("rjkCheck").style.display = "none";
			}
		}
		else{
			document.getElementById("rjkCheck").style.display = "none";
		}
		
		if(pilihRjk){
			optRjkValue = document.getElementById("optnonRjk").value;
			if(optRjkValue == pilihRjk.value){
				document.getElementById("nonrjkCheck").style.display = "block";
			}
			else{
				document.getElementById("nonrjkCheck").style.display = "none";
			}
		}
		else{
			document.getElementById("nonrjkCheck").style.display = "none";
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