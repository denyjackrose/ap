{% extends 'template/aplous.volt' %}

{% block content %}
<div class="row">
				
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('user') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_sdm.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">User</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 col-xs-6 col-md-3 col-lg-2 m-b-20">
						<a href="{{ url('master') }}">
							<div class="ar-1-1 bg-bd-white" >
								<div class="widget-2 panel">
									<div class="panel-body">
										<div class="db-menu">
										{{ image('img/icon/ic_master.png') }}
										</div>
										<div class="pull-bottom bottom-left bottom-right padding-5">
											<h5 class="db-text">Master Data</h5>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
				  
				  
				
				</div>
{% endblock %}