{% extends 'template/aplous.volt' %}

{% block content %}
<form name="frmpoli" id="frmpoli" method="post" class="frmpoli" onsubmit="register();return false;" enctype="multipart/form-data">
	<div class="col-sm-12">
		<!-- START PANEL -->
        <div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
                <div class="col-sm-6">
                  <div class="form-group form-group-default">
                    <label>ID <?php echo $ctrlname;?></label>
                    <input type="text" name="txtpolid" placeholder="cth. kabid" class="form-control" required>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group form-group-default">
                    <label>Nama <?php echo $ctrlname;?></label>
                    <input type="text" name="txtpolnama" placeholder="cth. Kebidanan" class="form-control" required>
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
 function register()
 {
			var data = $('#frmpoli').serialize();
			$.ajax({
                type:"POST",
                url:"{{ url('Poli/register') }}",
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