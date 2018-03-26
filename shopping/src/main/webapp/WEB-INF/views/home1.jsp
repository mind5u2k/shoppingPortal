<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.panel-success:hover {
	box-shadow: 4px 3px 8px #457531;
}

.panel-body:after {
	content: none;
}
</style>
<div id="ribbon">
	<ol class="breadcrumb">
		<li>Home</li>
		<li>Dashboard</li>
	</ol>
</div>
<div class="well" style="padding: 0; border: 0;">
	<div id="myCarousel-2" class="carousel slide">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel-2" data-slide-to="0" class=""></li>
			<li data-target="#myCarousel-2" data-slide-to="1" class="active"></li>
			<li data-target="#myCarousel-2" data-slide-to="2" class=""></li>
		</ol>
		<div class="carousel-inner">
			<!-- Slide 1 -->
			<div class="item">
				<img src="${images}/demo/a1.jpg" alt="">
				<!-- <div class="carousel-caption caption-right">
							<h4>Title 1</h4>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
							<br> <a href="javascript:void(0);"
								class="btn btn-info btn-sm">Read more</a>
						</div> -->
			</div>
			<!-- Slide 2 -->
			<div class="item active">
				<img src="${images}/demo/a2.jpg" alt="">
				<!-- <div class="carousel-caption caption-left">
							<h4>Title 2</h4>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
							<br> <a href="javascript:void(0);"
								class="btn btn-danger btn-sm">Read more</a>
						</div> -->
			</div>
			<!-- Slide 3 -->
			<div class="item">
				<img src="${images}/demo/a3.jpg" alt="">
				<!-- <div class="carousel-caption">
							<h4>A very long thumbnail title here to fill the space</h4>
							<br>
						</div> -->
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel-2"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
		</a> <a class="right carousel-control" href="#myCarousel-2"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>
</div>

<div id="content">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<h3
				style="margin-top: 0; margin-bottom: 0; border-bottom: 0px solid #7b7979; padding: 7px 12px 22px 13px; text-align: center; font-size: 28px;">!!
				Our Products !!</h3>
		</div>
		<div class="col-sm-12 col-md-12 col-lg-12">
			<div class="jarviswidget" id="wid-id-5" role="widget">
				<div role="content" style="border-top: 1px solid #ccc;">
					<div class="jarviswidget-editbox"></div>
					<div class="widget-body">
						<c:forEach items="${categoryWiseProducts}" var="cat">
							<c:choose>
								<c:when test="${not empty cat.products}">
									<div class="row">
										<div class="col-sm-12" id="allProducts">
											<div class="row" style="border-bottom: 1px solid #ccc;">
												<div class="col-xs-12 col-sm-12 col-md-12"
													style="margin-top: 23px;">
													<h3
														style="margin-top: 0; margin-bottom: 0; border-bottom: 0px solid #7b7979; padding: 0px 12px 11px 13px; font-size: 23px; color: #a80707;">${cat.category.name}
														....<a class="btn btn-success"
															href="${contextRoot}/show/all/products"
															style="float: right;">View More Products</a>
													</h3>
												</div>
												<c:forEach items="${cat.products}" var="pro">
													<div class="col-xs-12 col-sm-6 col-md-3">
														<div class="panel panel-success pricing-big">
															<div class="panel-heading"
																style="padding: 0 8px 0px 8px; border: 0; background: #fff; text-align: center; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
																<span class="panel-title"
																	style="padding: 13px 0 7px 0; font-weight: 100; font-size: 17px;">${pro.name}</span>
															</div>
															<div class="panel-heading"
																style="padding: 2px 2px; border: 0; background: #fff;">
																<h3 class="panel-title" style="padding: 0;">
																	<img
																		style="width: 100%; height: 220px; border-radius: 2px;"
																		src="${img}/${pro.code}.jpg">
																</h3>
															</div>
															<div class="panel-body no-padding text-align-center">
																<div class="price-features"
																	style="min-height: 0; background: #fff; padding-bottom: 0; padding: 0;">
																	<ul class="list-unstyled text-left"
																		style="text-align: center !important; padding: 13px 12px 2px 12px;">
																		<li class="text-success">Price - <strong>
																				just <i class="fa fa-rupee text-success"></i>
																				${pro.unitPrice}
																		</strong></li>
																		<c:choose>
																			<c:when test="${pro.quantity < 1}">
																				<li style="margin-top: 2px; color: red;">!! Out
																					of Stock !!</li>
																			</c:when>
																			<c:otherwise>
																				<li style="margin-top: 2px;">Qty Available : <strong>
																						${pro.quantity}</strong> <i
																					class="fa fa-check text-success"></i>
																				</li>
																			</c:otherwise>
																		</c:choose>
																		<li style="margin-bottom: 10px;"><button
																				class="btn btn-primary"
																				onclick="window.location.href='${contextRoot}/show/${pro.id}/product'">
																				<i class="fa fa-eye"></i> View
																			</button> <c:choose>
																				<c:when test="${pro.quantity < 1}">
																					<button class="btn btn-primary" disabled="disabled">
																						<i class="fa fa-shopping-cart"></i> Add to Cart
																					</button>
																				</c:when>
																				<c:otherwise>
																					<button class="btn btn-primary"
																						onclick="window.location.href='${contextRoot}/cart/add/${pro.id}/product'">
																						<i class="fa fa-shopping-cart"></i> Add to Cart
																					</button>
																				</c:otherwise>
																			</c:choose></li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%-- <div class="content">

	<!-- Loading the home content -->
	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp"%>
	</c:if>

	<!-- Load only when user clicks about -->
	<c:if test="${userClickAbout == true }">
		<%@include file="about.jsp"%>
	</c:if>

	<!-- Load only when user clicks contact -->
	<c:if test="${userClickContact == true }">
		<%@include file="contact.jsp"%>
	</c:if>

	<!-- Load only when user clicks contact -->
	<c:if
		test="${userClickAllProducts == true or userClickCategoryProducts == true }">
		<%@include file="listProducts.jsp"%>
	</c:if>


	<!-- Load only when user clicks show product -->
	<c:if test="${userClickShowProduct == true}">
		<%@include file="singleProduct.jsp"%>
	</c:if>

	<!-- Load only when user clicks manage product -->
	<c:if test="${userClickManageProduct == true}">
		<%@include file="manageProduct.jsp"%>
	</c:if>

	<!-- Load only when user clicks manage product -->
	<c:if test="${userClickShowCart == true}">
		<%@include file="cart.jsp"%>
	</c:if>

</div> --%>