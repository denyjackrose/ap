{% extends 'template/aplous.volt' %} {% block content %}

<div class="col-md-12 col-sm-12 margin-100">
    <div class="col-md-2 col-sm-12">
    </div>
    <div class="col-md-8 col-sm-12">
        <div class="panel  panel-default">
            <div class="panel-body">
                <h4 class="bold"> Pilih Gudang </h4>
                
                <form class="form-defult" id="pilihan" method="POST" onsubmit='makePath(this);'>
                <div class="form-group form-group-default form-group-default-select2 required">
                    <label class="">Lantai</label>
                    <select onchange="setAction(this.value)" class="full-width"  data-placeholder="Pilih Lantai" id="pilihgudang" data-init-plugin="select2">
											<option value=""></option> 
											<option value="{{ url('element_inventory/master_obat_gudang/1') }}">Gudang 1</option>
											<option value="{{ url('element_inventory/master_obat_gudang/2') }}">Gudang 2</option>
											<option value="{{ url('element_inventory/master_obat_gudang/3') }}">Gudang 3</option>
											<option value="{{ url('element_inventory/master_obat_gudang/4') }}">Gudang 4</option>
											<option value="{{ url('element_inventory/master_obat_gudang/5') }}">Gudang 5</option>
											<option value="{{ url('element_inventory/master_obat_gudang/6') }}">Gudang 6</option>
										</select>
                  </div>
                  <div class="pull-right">
                     <button class="btn btn-primary btn-lg btn-cons" type="submit">Next</button>
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

		document.forms[0].action = nPage;
	}

</script>
{% endblock %}