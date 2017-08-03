{% extends 'template/aplous.volt' %} 
{% block content %}

<!-- Button trigger modal -->

<button class="btn-save btn btn-primary btn-lg" type="submit" data-toggle="modal" data-target="#myModal"> Tambah Data</button>


<!-- Modal -->
<div class="modal fade fill-in" style="background:#fff!important" id="myModal" tabindex="-1" role="dialog" aria-hidden="true"
  data-backdrop="static" data-keyboard="false">
  <button type="button" class="btn btn-danger" style="z-index:999; position: absolute; top: 0px; right: 0px; margin:0!important; border-radius: 0px!important"
    data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i>
            </button>
  <div class="modal-dialog " style="width: 100%!important;">

    <div class="modal-header clearfix text-left">

      <h5><span class="bold">Paket Obat</span></h5>

    </div>
    <div class="modal-body">
      <form name="frmmasterdepo" id="frmmasterdepo" method="post" class="" onsubmit="register();return false;" enctype="multipart/form-data">

        <!-- START PANEL -->
        <div class="panel panel-default">
          <div class="panel-body">
            <div class="row">
              <div class="col-sm-12">
                <div class="col-sm-6">
                  <div class="form-group form-group-default">
                    <label>Nama Paket</label>
                    <input type="text" name="txtnamapaket" placeholder="" class="form-control">
                  </div>
				  
                  <div class="form-group form-group-default">
                    <label>Deskripsi</label>
                    <input type="text" name="txtdeskripsi" placeholder="" class="form-control">
                  </div>

                </div>


                <div class="col-sm-6">
                    
					<div class="form-group">
					<label>List Obat </label>
					<p class="m-b-15"><i> Data obat yang dapat dimasukan Maksimal 20 Obat.</i></p>
						<div class="row">
							<div class="col-lg-12">
								<div id="ObatWrapper">
									<div class="ObatRemove">
										<div class="form-group form-group-default">
											<label>Obat 1</label>
											<input id="obat" onclick="openKCFinder(this)" class="form-control" type="text" name="obat[]"/>
										</div>
									</div>
								</div>
							</div>
									
							
							<button href="#" id="AddMoreObat" class="btn btn-orange pull-right m-t-10 m-b-10"><i class="fa fa-plus" aria-hidden="true"></i> Tambah</button>
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
        <th style="min-width: 200px;">Nama Paket</th>
        <th style="min-width: 200px;">Deskripsi</th>
        <th style="min-width: 400px;">List Obat</th>
        
        <th style="width: 200px;">Action</th>
      </tr>
    </thead>


    <tbody>
      <tr class="no-m">
        <td class="v-align-middle">PAKET EGD</td>
        <td class="v-align-middle">Contoh Deskripsi</td>
        <td class="v-align-middle">[{"kode":"1010238"},{"kode":"2030022"},{"kode":"CC.224"},{"kode":"ALK003"},{"kode":"5.020.058"},{"kode":"1.010.368"},{"kode":"SN.118"},{"kode":"2.030.036"},{"kode":"2.030.035"},{"kode":"014623100"}]</td>
        <td class="v-align-middle">
          <div class="pull-right">
            <button type="button" class="btn btn-info"><i class="fa fa-paste"></i></button>
            <button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i></button>
          </div>
        </td>
      </tr>


    </tbody>
  </table>
</div>

{% endblock %}