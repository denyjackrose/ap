{% extends 'template/aplous.volt' %}

{% block content %}
<div class="row">
				<section id="area">
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('tarif/igd') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_igd.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">IGD</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('tarif/akomodasi') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_akomodasi.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Akomodasi</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('tarif/rawat_jalan') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_rawat_jalan.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Rawat Jalan</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
				  
				</section>
				</div>
{% endblock %}