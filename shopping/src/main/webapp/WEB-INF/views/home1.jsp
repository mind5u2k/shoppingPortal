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
		<h2 class="row-seperator-header">
			<i class="fa fa-plus"></i> Our Most Viewed Products
		</h2>
		<div class="col-sm-12 col-md-12 col-lg-12"></div>
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