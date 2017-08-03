{% extends 'template/aplous.volt' %}

{% block content %}
<div class="row">
				<section id="area">
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_inventory/master_depo') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_depo.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Master Depo</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_inventory/master_supplier') }}">
								<span class="beres">1</span>
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_supplier.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Master Supplier</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_inventory/master_material_group') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_material_group.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Master Material Group</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_inventory/edit_master_obat_gudang') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_edit_obat_gudang.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Edit Master Obat Gudang</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_inventory/view_stok_master_obat_gudang') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_view_stok_obat.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">View Stok Master Obat Gudang</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>

					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_inventory/master_gudang_logistik') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_master_logistik.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Master Gudang Logistik</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
				  
				  
				</section>
				</div>
{% endblock %}