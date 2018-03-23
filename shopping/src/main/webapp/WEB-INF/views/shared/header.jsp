<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	HttpSession session1 = request.getSession();
	String access = (String) session1.getAttribute("Access");
	String ComplianceRole = (String) session1
			.getAttribute("ComplianceRole");
	request.setAttribute("Access", access);
	request.setAttribute("ComplianceRole", ComplianceRole);
%>

<header id="header" style="background: #313131 !important;">
<div id="logo-group">
	<!-- PLACE YOUR LOGO HERE -->
	<span id="logo"> <img style="width: 64px;"
		src="${contextPath}/comDash/img/ibmlogo.png" alt="SmartAdmin">
	</span><span id="activity" class="activity-dropdown" style="color: #313131;">
		<i class="fa fa-user"></i>
	</span>
	<div class="ajax-dropdown" style="display: none; height: auto;">
		<div class="btn-group btn-group-justified" data-toggle="buttons">
			<label class="btn btn-default"> <input type="radio"
				name="activity" id="ajax/notify/mail.html">User Info
			</label>
		</div>
		<div class=" "></div>
		<table style="display: table; width: 100%;">
			<tbody>
				<tr style="border-bottom: 1px solid #ccc; background: #eaeaea;">
					<td style="padding: 4px 0px 4px 14px;">Name</td>
					<td style="padding: 4px"><%=session.getAttribute("UserName")%></td>
				</tr>
				<tr style="border-bottom: 1px solid #ccc; background: #f7f6f6;">
					<td style="padding: 4px 0px 4px 14px;">E-Mail</td>
					<td style="padding: 4px"><%=session.getAttribute("mailid")%></td>
				</tr>
				<tr style="border-bottom: 1px solid #ccc; background: #eaeaea;">
					<td style="padding: 4px 0px 4px 14px;">Role</td>
					<td style="padding: 4px"><%=session.getAttribute("ComplianceRole")%></td>
				</tr>
				<tr style="border-bottom: 1px solid #ccc; background: #f7f6f6;">
					<td style="padding: 4px 0px 4px 14px;">Access</td>
					<td style="padding: 4px"><%=session.getAttribute("Access")%></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="hidden-xs" style="border-left: 1px solid #000;">
	<div style="border-left: 2px solid #4e4d4d; height: 100%;">
		<span id="logo" style="color: #fff; font-size: 16px; width: auto;">
			Compliance Dashboard - <%=session.getAttribute("Access")%></span>
	</div>
</div>

<div class="pull-right">

	<!-- collapse menu button -->

	<!-- end collapse menu -->

	<!-- #MOBILE -->
	<!-- Top menu profile link : this shows only when top menu is active -->
	<ul id="mobile-profile-img"
		class="header-dropdown-list hidden-xs padding-5">
		<li class=""><a href="#"
			class="dropdown-toggle no-margin userdropdown" data-toggle="dropdown">
				asd </a>
			<ul class="dropdown-menu pull-right">
				<li><a href="javascript:void(0);"
					class="padding-10 padding-top-0 padding-bottom-0"><i
						class="fa fa-cog"></i> Setting</a></li>
				<li class="divider"></li>
				<li><a href="profile.html"
					class="padding-10 padding-top-0 padding-bottom-0"> <i
						class="fa fa-user"></i> <u>P</u>rofile
				</a></li>
				<li class="divider"></li>
				<li><a href="javascript:void(0);"
					class="padding-10 padding-top-0 padding-bottom-0"
					data-action="toggleShortcut"><i class="fa fa-arrow-down"></i> <u>S</u>hortcut</a></li>
				<li class="divider"></li>
				<li><a href="javascript:void(0);"
					class="padding-10 padding-top-0 padding-bottom-0"
					data-action="launchFullscreen"><i class="fa fa-arrows-alt"></i>
						Full <u>S</u>creen</a></li>
				<li class="divider"></li>
				<li><a href="${contextPath}/logout"
					class="padding-10 padding-top-5 padding-bottom-5"
					data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i> <strong><u>L</u>ogout</strong></a></li>
			</ul></li>
	</ul>

	<div id="hide-menu" class="btn-header pull-right">
		<span> <a href="javascript:void(0);" data-action="toggleMenu"
			title="Collapse Menu"><i class="fa fa-reorder"></i></a>
		</span>
	</div>

	<!-- logout button -->
	<div id="logout" class="btn-header transparent pull-right">
		<span> <a href="${contextPath}/logout.jsp" title="Sign Out"
			data-action="userLogout"
			data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i
				class="fa fa-sign-out"></i></a>
		</span>
	</div>
	<div id="fullscreen" class="btn-header transparent pull-right">
		<span> <a href="javascript:void(0);"
			data-action="launchFullscreen" title="Full Screen"><i
				class="fa fa-arrows-alt"></i></a>
		</span>
	</div>
	<div id="fullscreen" class="btn-header transparent pull-right">
		<span> <a href="CompDashBasePage" style="padding: 3px;"><i
				style="font-size: 21px;" class="fa fa-home"></i></a>
		</span>
	</div>
</div>
</header>
<aside id="left-panel" style="background: #464545 !important;">
<div class="login-info" style="background: #202440;">
	<span style="font-size: 18px; text-align: center;"> <a
		href="javascript:void(0);" id="show-shortcut"
		data-action="toggleShortcut" style="color: #fff;"> <span> <%=session.getAttribute("ComplianceRole")%>
		</span>
	</a>
	</span>
</div>
<nav>
<ul>
	<li id="home"><a href="CompliaceDashboardHome"><i
			class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Home</span></a></li>
	<%-- <c:if test="${Access == 'SUPER ADMIN'}">
		<li id="home"><a href="#"><i class="fa fa-lg fa-fw fa-bank"></i>
				<span class="menu-item-parent">Admin Access</span><b
				class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
			<ul id="homeBlock" style="display: none;">
				<li id="accounts"><a href="AllAccountMasters">Accounts</a></li>
				<li id="roles"><a href="Roles">Access Level</a></li>
				<li id="users"><a href="AllUsers">Users</a></li>
				<li id="categories"><a href="FormCategory">Form Categories</a></li>
				<li id="parameters"><a href="FormParameters">Form
						Parameters</a></li>
				<li id="escMatrix"><a href="EscMatrixDatabase">Esc Matrix
						Database</a></li>
			</ul></li>
	</c:if> --%>
	<c:if test="${Access == 'ADMIN' || Access == 'SUPER ADMIN'}">
		<li id="home"><a href="#"><i class="fa fa-lg fa-fw fa-bank"></i>
				<span class="menu-item-parent">Admin Access</span><b
				class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
			<ul id="homeBlock" style="display: none;">
				<li id="accounts"><a href="AllAccountMasters">Accounts</a></li>
				<li id="roles"><a href="Roles">Access Level</a></li>
				<li id="users"><a href="AllUsers">Users</a></li>
				<li id="categories"><a href="FormCategory">Form Categories</a></li>
				<li id="parameters"><a href="FormParameters">Form
						Parameters</a></li>
				<li id="escMatrix"><a href="EscMatrixDatabase">Esc Matrix
						Database</a></li>
			</ul></li>
	</c:if>
	<%-- <c:if test="${Access == 'LEADER'}">
		<li id="home"><a href="#"><i class="fa fa-lg fa-fw fa-bank"></i>
				<span class="menu-item-parent">Admin Access</span><b
				class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
			<ul id="homeBlock" style="display: none;">
				<li id="accounts"><a href="AllAccountMasters">Accounts</a></li>
				<li id="roles"><a href="Roles">Access Level</a></li>
				<li id="users"><a href="AllUsers">Users</a></li>
				<li id="categories"><a href="FormCategory">Form Categories</a></li>
				<li id="parameters"><a href="FormParameters">Form
						Parameters</a></li>
				<li id="escMatrix"><a href="EscMatrixDatabase">Esc Matrix
						Database</a></li>
			</ul></li>
	</c:if> --%>
	<c:if test="${Access == 'USER'}">
		<li id="EscMatrixUser"><a href="EscMatrixUser"><i
				class="fa fa-lg fa-fw fa-envelope-o"></i> <span
				class="menu-item-parent">Esc Matrix Database</span></a></li>
	</c:if>
	<li id="FormByAccount"><a href="FormByAccount"><i
			class="fa fa-lg fa-fw fa-bar-chart-o"></i> <span
			class="menu-item-parent">Compliance Form</span></a></li>
	<li id="leadershipDashboard"><a href="LeaderShipDashboard"><i
			class="fa fa-lg fa-fw fa-sitemap"></i> <span class="menu-item-parent">Leadership
				Dashboard </span></a></li>
	<li id="ComplianceSocrecard"><a href="ComplianceScorecard"><i
			class="fa fa-lg fa-fw fa-reorder"></i> <span class="menu-item-parent">Compliance
				Scorecard </span></a></li>
	<!-- <li><a href="inbox.html"><i class="fa fa-lg fa-fw fa-files-o"></i>
			<span class="menu-item-parent">Report Generation </span></a></li> -->
	<c:if test="${Access != 'USER'}">
		<li id="ComplianceMail"><a href="ComplianceMail"><i
				class="fa fa-lg fa-fw fa-envelope-o"></i> <span
				class="menu-item-parent">Mails</span></a></li>
	</c:if>
	<li id="Report"><a href="Report"><i
			class="fa fa-lg fa-fw fa-file-pdf-o"></i> <span
			class="menu-item-parent">Report</span></a></li>

	<li><div class="minifyme"
			style="background: rgb(123, 120, 120); position: unset; text-align: center; font-size: 24px; padding: 6px 1px 31px; margin-top: 17px; cursor: pointer; width: 100%;"
			data-action="minifyMenu">
			<i class="fa fa-arrow-circle-left hit"></i>
		</div></li>

</ul>
</nav> </aside>