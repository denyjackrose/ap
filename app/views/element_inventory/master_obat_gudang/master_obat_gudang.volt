{% extends 'template/aplous.volt' %} {% block content %}
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

      <h5><span class="bold">Master Depo</span></h5>

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
                    <label>Nama Depo</label>
                    <input type="text" name="txtnamadepo" placeholder="" class="form-control">
                  </div>

                  <div class="form-group form-group-default form-group-default-select2 required">
                    <label class="">Lantai</label>
                    <select class="full-width" data-placeholder="Pilih Lantai" data-init-plugin="select2">
											<option value=""></option> 
											<option value="lantai1">Lantai 1</option>
											<option value="lantai2">Lantai 2</option>
											<option value="lantai3">Lantai 3</option>
											<option value="lantai4">Lantai 4</option>
											<option value="lantai5">Lantai 5</option>
											<option value="lantai6">Lantai 6</option>
										</select>
                  </div>

                  <div class="form-group form-group-default form-group-default-select2 required">
                    <label class="">Lokasi Depo</label>
                    <select class="full-width" data-placeholder="Pilih Lokasi Depo" data-init-plugin="select2">
											<option value=""></option> 
											<option value="anakatas">Anak Atas</option>
											<option value="anakbawah">Anak Bawah</option>
											<option value="anesthesidanreaminasi">Anesthesi & Reaminasi</option>
											<option value="anggrek">Anggrek</option>
											<option value="anggrekatasbayinicu">Anggrek Atas Bayi / Nicu</option>
											<option value="askescenter">Askes Center</option>  
										</select>
                  </div>

                </div>


                <div class="col-sm-6">

                  <div class="form-group form-group-default form-group-default-select2 required">
                    <label class="">Unit Kerja Logistik</label>
                    <select class="full-width" data-placeholder="Pilih Unit Kerja Logistik" data-init-plugin="select2">
											<option value=""></option> 
											<option value="bagianakuntansi">Bagian Akuntansi</option> 
											<option value="bagianpendidikandanpenelitian">Bagian Pendidikan dan Penelitian</option> 
											<option value="bagianperbendaharaandanmobilisasidana">Bagian Perbendaharaan dan Mobilisasi Dana</option> 
											<option value="bagianperencanaananggaran">Bagian Perencanaan Anggaran</option> 
											<option value="bagiansumberdayamanusia">Bagian Sumber Daya Manusia</option> 
										</select>
                  </div>

                  <div class="form-group form-group-default">
                    <label>Keterangan</label>
                    <textarea id="txtketerangan" type="text" name="txtketerangan" placeholder="" style="min-height: 80px" class="form-control disabled"></textarea>
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
        <th style="min-width: 300px;">Nama Depo</th>
        <th>Lantai</th>
        <th>Lokasi Depo</th>
        <th>Unit Kerja Logistik</th>
        <th style="min-width: 200px;">Keterangan</th>
        <th style="min-width: 200px;">Action</th>
      </tr>
    </thead>


    <tbody>
      <tr class="no-m">
        <td class="v-align-middle">Anak Atas</td>
        <td class="v-align-middle">Lantai 2</td>
        <td class="v-align-middle">Anak Atas</td>
        <td class="v-align-middle">Instalasi Rawat Inap B</td>
        <td class="v-align-middle"> </td>
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
<!-- Apply the plugin Disini -->


{% endblock %}