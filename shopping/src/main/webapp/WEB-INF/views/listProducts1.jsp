<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.menu-on-top li.active>a {
	font-weight: 700 !important;
	background: #eae8e8 !important;
	box-shadow: -3px 0px 0px #57889c !important;
}
</style>
<div id="content">
	<div class="row">

		<div class="col-sm-12 col-md-12 col-lg-12">
			<div class="jarviswidget" id="wid-id-5"
				data-widget-colorbutton="false" data-widget-editbutton="false"
				data-widget-fullscreenbutton="false"
				data-widget-custombutton="false" data-widget-sortable="false"
				role="widget">
				<div role="content" style="border-top: 1px solid #ccc;">
					<div class="jarviswidget-editbox"></div>
					<div class="widget-body">

						<div class="row">
							<div class="col-sm-2">
								<h1 style="margin-bottom: 31px;">Available Products...</h1>
								<div class=" ">
									<ul class="nav nav-tabs tabs-left" id="demo-pill-nav">
										<c:forEach items="${categories}" var="cat">
											<c:if test="${cat.id == category.id}">
												<li class="active" style="width: 100%;"><a
													href="#tab-r1" data-toggle="tab"><span
														class="badge bg-color-blue txt-color-white">12</span>
														${cat.name} </a></li>
											</c:if>
											<c:if test="${cat.id != category.id}">
												<li class="" style="width: 100%;"><a href="#tab-r1"
													data-toggle="tab"><span
														class="badge bg-color-blue txt-color-white">12</span>
														${cat.name} </a></li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
							<div class="col-sm-10">
								<div class="row">
									<div class="col-xs-12 col-sm-12 col-md-12">
										<h3
											style="margin-top: 0; margin-bottom: 0; border-bottom: 0px solid #7b7979; padding: 0px 12px 11px 13px;">${category.name}
											....</h3>
									</div>
									<div class="col-xs-12 col-sm-6 col-md-3">
										<div class="panel panel-success pricing-big">

											<div class="panel-heading">
												<h3 class="panel-title">Light version</h3>
											</div>
											<div class="panel-body no-padding text-align-center">
												<div class="the-price">
													<h1>
														<strong>FREE</strong>
													</h1>
												</div>
												<div class="price-features">
													<ul class="list-unstyled text-left">
														<li><i class="fa fa-check text-success"></i> 2 years
															access <strong> to all storage locations</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Unlimited</strong>
															storage</li>
														<li><i class="fa fa-check text-success"></i> Limited
															<strong> download quota</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Cash
																on Delivery</strong></li>
														<li><i class="fa fa-check text-success"></i> All time
															<strong> updates</strong></li>
														<li><i class="fa fa-times text-danger"></i> <strong>Unlimited</strong>
															access to all files</li>
														<li><i class="fa fa-times text-danger"></i> <strong>Allowed</strong>
															to be exclusing per sale</li>
													</ul>
												</div>
											</div>
											<div class="panel-footer text-align-center">
												<a href="javascript:void(0);"
													class="btn btn-primary btn-block" role="button">Download
													<span> now!</span>
												</a>
												<div>
													Or <a href="javascript:void(0);">Sign up</a>
												</div>
											</div>
										</div>
									</div>

									<div class="col-xs-12 col-sm-6 col-md-3">
										<div class="panel panel-teal pricing-big">

											<div class="panel-heading">
												<h3 class="panel-title">Personal Project</h3>
											</div>
											<div class="panel-body no-padding text-align-center">
												<div class="the-price">
													<h1>
														$99<span class="subscript">/ mo</span>
													</h1>
												</div>
												<div class="price-features">
													<ul class="list-unstyled text-left">
														<li><i class="fa fa-check text-success"></i> 2 years
															access <strong> to all storage locations</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Unlimited</strong>
															storage</li>
														<li><i class="fa fa-check text-success"></i> Superbig
															<strong> download quota</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Cash
																on Delivery</strong></li>
														<li><i class="fa fa-check text-success"></i> All time
															<strong> updates</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Unlimited</strong>
															access to all files</li>
														<li><i class="fa fa-check text-success"></i> <strong>Allowed</strong>
															to be exclusing per sale</li>
													</ul>
												</div>
											</div>
											<div class="panel-footer text-align-center">
												<a href="javascript:void(0);"
													class="btn btn-primary btn-block" role="button">Purchase
													<span>via Paypal</span>
												</a>
												<div>
													<a href="javascript:void(0);"><i>We accept all
															major credit cards</i></a>
												</div>
											</div>
										</div>
									</div>

									<div class="col-xs-12 col-sm-6 col-md-3">
										<div class="panel panel-primary pricing-big">
											<img src="img/ribbon.png" class="ribbon" alt="">
											<div class="panel-heading">
												<h3 class="panel-title">Developer Bundle</h3>
											</div>
											<div class="panel-body no-padding text-align-center">
												<div class="the-price">
													<h1>
														$350<span class="subscript">/ mo</span>
													</h1>
												</div>
												<div class="price-features">
													<ul class="list-unstyled text-left">
														<li><i class="fa fa-check text-success"></i> 2 years
															access <strong> to all storage locations</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Unlimited</strong>
															storage</li>
														<li><i class="fa fa-check text-success"></i> Superbig
															<strong> download quota</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Cash
																on Delivery</strong></li>
														<li><i class="fa fa-check text-success"></i> All time
															<strong> updates</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Unlimited</strong>
															access to all files</li>
														<li><i class="fa fa-check text-success"></i> <strong>Allowed</strong>
															to be exclusing per sale</li>
													</ul>
												</div>
											</div>
											<div class="panel-footer text-align-center">
												<a href="javascript:void(0);"
													class="btn btn-primary btn-block" role="button">Purchase
													<span>via Paypal</span>
												</a>
												<div>
													<a href="javascript:void(0);"><i>We accept all
															major credit cards</i></a>
												</div>
											</div>
										</div>
									</div>

									<div class="col-xs-12 col-sm-6 col-md-3">
										<div class="panel panel-darken pricing-big">

											<div class="panel-heading">
												<h3 class="panel-title">Premium Package</h3>
											</div>
											<div class="panel-body no-padding text-align-center">
												<div class="the-price">
													<h1>
														$999<span class="subscript">/ mo</span>
													</h1>
												</div>
												<div class="price-features">
													<ul class="list-unstyled text-left">
														<li><i class="fa fa-check text-success"></i> Lifetime
															access <strong> to all storage locations</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Unlimited</strong>
															storage</li>
														<li><i class="fa fa-check text-success"></i> Superbig
															<strong> download quota</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Cash
																on Delivery</strong></li>
														<li><i class="fa fa-check text-success"></i> All time
															<strong> updates</strong></li>
														<li><i class="fa fa-check text-success"></i> <strong>Unlimited</strong>
															access to all files</li>
														<li><i class="fa fa-check text-success"></i> <strong>Allowed</strong>
															to be exclusing per sale</li>
													</ul>
												</div>
											</div>
											<div class="panel-footer text-align-center">
												<a href="javascript:void(0);"
													class="btn btn-primary btn-block" role="button">Purchase
													<span>via Paypal</span>
												</a>
												<div>
													<a href="javascript:void(0);"><i>We accept all
															major credit cards</i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>