{% extends 'template/aplous.volt' %}

{% block content %}
<div class="row">
				<section id="area">
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_tindakan/master_akomodasi') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_akomodasi.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Master Akomodasi</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_tindakan/master_equipment') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_equipment.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Master Equipment</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_tindakan/master_obat') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_obat.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Master Obat</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_tindakan/tarif_akomodasi') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_tarif_akomodasi.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Tarif Akomodasi</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_tindakan/tarif_equipment') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_tarif_equipment.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Tarif Equipment</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_tindakan/tarif_obat') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_tarif_obat.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Tarif Obat</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
				  
				  
				</section>
				</div>
{% endblock %}