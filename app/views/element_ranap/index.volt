{% extends 'template/aplous.volt' %}

{% block content %}
<div class="row">
				<section id="area">
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_ranap/bor') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_bor.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">B O R</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_ranap/gedung') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_gedung.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Gedung</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_ranap/kelas') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_kelas.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Kelas</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_ranap/lantai') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_lantai.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Lantai</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_ranap/ruang_ok/') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_ruangok.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Ruang OK</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('element_ranap/ruang_rawat/') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_ruangrawat.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Ruang Rawat</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
				  
				  
				</section>
				</div>
{% endblock %}