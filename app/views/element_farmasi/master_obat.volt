{% extends 'template/aplous.volt' %}

{% block content %}

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
            <th>Kemasan</th>
            <th>KodeSatuanKecil</th>
            <th style="min-width: 200px;">Material Group</th>
            <th>Harga Terakhir</th>
            <th>Isi</th>
            <th>Formularium</th>
            <th>DpHo</th>
            <th>Keterangan</th>
            <th>IsiRestricted</th>
            <th style="min-width: 200px;">Stok Barang</th>
            <th style="min-width: 200px;">Action</th>
        </tr>
    </thead>


    <tbody>
        <tr class="no-m">
            <td class="v-align-middle">'</td>
            <td class="v-align-middle">COROFLEX BLUE 4,0 X 16 MM</td>
            <td class="v-align-middle"></td>
            <td class="v-align-middle">PCS</td>
            <td class="v-align-middle">,(45)BARANG KONSINYASI,</td>
            <td class="v-align-middle">8712000</td>
            <td class="v-align-middle">0</td>
            <td class="v-align-middle">Lain-Lain</td>
            <td class="v-align-middle">-</td>
            <td class="v-align-middle">-</td>
            <td class="v-align-middle">0</td>
            <td class="v-align-middle">
				<button class="btn btn-info btn-sm"> Stock Barang </button> : 0.00</td>
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