{% extends 'template/aplous.volt' %} {% block content %}

<div class="col-md-12 col-sm-12 margin-100">
    <div class="col-md-2 col-sm-12">
    </div>
    <div class="col-md-8 col-sm-12">
        <div class="panel  panel-default">
            <div class="panel-body">
                <h4 class="bold"> Pilih Gudang </h4>
                
                <form class="form-defult" id="pilihan" method="POST" onSubmit="return OnSubmitForm();">
                <div class="form-group form-group-default form-group-default-select2 required">
                    <label class="">Lantai</label>
                    <select name="viewstok" onchange="setAction(this.value)" class="full-width"  data-placeholder="Pilih Lantai" id="pilihgudang" data-init-plugin="select2">
											<option value=""></option> 
											<option value="111">Gudang 1</option>
											<option value="222">Gudang 2</option>
											<option value="3333">Gudang 3</option>
											<option value="1232">Gudang 4</option>
											<option value="123">Gudang 5</option>
											<option value="6">Gudang 6</option>
										</select>
                  </div>
                  <div class="pull-right">
                     <button class="btn btn-info btn-lg btn-cons" id="stok" value="" type="submit">View Stok</button>
					   <button class="btn btn-primary btn-lg btn-cons" id="harga" value="" type="submit">View Harga</button>
                  </div>
                  </form>
            </div>
        </div>
    </div>
    <div class="col-md-2 col-sm-12">
    </div>
    
    
</div>
<script type="text/javascript">

	function setAction(nPage){
		var btnstok = $("#stok").val();
		var btnharga = $("#harga").val();
	$(document).ready(function(){
  
    $("#stok").click(function(){
        $("#stok").val("0");
    });
    $("#harga").click(function(){
        $("#harga").val("1");
    });
});
		document.forms[0].action = "http://localhost/ap/element_inventory/master_obat_gudang/" + nPage + "/" + btnstok + btnharga;
	}

</script>
{% endblock %}