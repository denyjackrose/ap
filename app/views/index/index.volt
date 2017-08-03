{% extends 'template/index.volt' %}

{% block content %}

<div class="col-lg-4">
</div>
<div class="col-lg-4">
		<!-- START PANEL -->
        <div class="panel panel-default center">
			<div class="panel-body">
			<img src="assets/img/logoMpm.png" alt="logo" data-src="assets/img/logoMpm.png" data-src-retina="assets/img/logoMpm.png" width="78" height="22">
          <p class="p-t-35">Sign into your pages account</p>
		  
			<form id="frmlogin" class="p-t-15" role="form"  onsubmit="Login();return true;" >
            <!-- START Form Control-->
            <div class="form-group form-group-default">
              <label>Login</label>
              <div class="controls">
                <input type="text" name="txtusername" placeholder="User Name" class="form-control" required>
              </div>
            </div>
            <!-- END Form Control-->
            <!-- START Form Control-->
            <div class="form-group form-group-default">
              <label>Password</label>
              <div class="controls">
                <input type="password" class="form-control" name="txtpassword" placeholder="Credentials" required>
              </div>
            </div>
            <!-- START Form Control -->
            <div class="row">
              <div class="col-md-6">
                <div class="checkbox ">
                  <input type="checkbox" value="1" id="checkbox1">
                  <label for="checkbox1">Keep Me Signed in</label>
                </div>
              </div>
              <div class="col-md-6 text-right">
                <a href="#" class="text-info small">Help? Contact Support</a>
              </div>
            </div>
            <!-- END Form Control-->
            <button class="btn btn-primary btn-cons m-t-10" type="submit" id="Login">Sign in</button>
          </form>
			</div>
		</div>
	</div>
<div class="col-lg-4">
</div>

<script type="text/javascript">
 function Login()
 {
			var data = $('#frmlogin').serialize();
			$.ajax({
                type:"POST",
                url:"{{ url('Index') }}",
                data:data,
                success:function(response)
				{
					if( response==1 )
					{
						swal({ 
                            title: "Transaksi Berhasil!", 
                            text: "I will close in 2 seconds.",
                            timer: 5000,
                            type: "success"
									
                        }); 
						window.location.href='http://localhost/ap/home';
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