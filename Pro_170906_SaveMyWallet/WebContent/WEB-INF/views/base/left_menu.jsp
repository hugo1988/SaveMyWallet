<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Top Bar Start -->
<div class="topbar">

	<!-- LOGO -->
	<div class="topbar-left">
		<a href="index.html" class="logo"><img alt="" style="width: 80%;"
			src="assets/images/wallet.png"> <i class="zmdi zmdi-layers"></i></a>
	</div>

	<!-- Button mobile view to collapse sidebar menu -->
	<div class="navbar navbar-default" role="navigation">
		<div class="container">

			<!-- Page title -->
			<ul class="nav navbar-nav navbar-left">
				<li>
					<button class="button-menu-mobile open-left">
						<i class="zmdi zmdi-menu"></i>
					</button>
				</li>
				<li>
					<h4 class="page-title">${pageTitle}</h4>
				</li>
			</ul>

		</div>
		<!-- end container -->
	</div>
	<!-- end navbar -->
</div>
<!-- Top Bar End -->


<!-- ========== Left Sidebar Start ========== -->
<div class="left side-menu">
	<div class="sidebar-inner slimscrollleft">

		<!-- User -->
		<div class="user-box">
			<div class="user-img">
				<img src="assets/images/users/avatar-3.jpg" alt="user-img"
					title="Mat Helme" class="img-circle img-thumbnail img-responsive">
				<div class="user-status offline">
					<i class="zmdi zmdi-dot-circle"></i>
				</div>
			</div>
			<h5>
				<a href="#">${user.getNameUser()}</a>
			</h5>
			<ul class="list-inline">

				<li><a href="logout.html" class="text-custom"> <i
						class="zmdi zmdi-power"></i>
				</a></li>
			</ul>
		</div>
		<!-- End User -->
<c:if test="${subMenuSelect=='create_wallet'}">soy create</c:if>
<c:if test="${subMenuSelect=='list_wallet'}">soy list</c:if>
		<!--- Sidemenu -->
		<div id="sidebar-menu">
			<ul>
				<li class="text-muted menu-title">Navegaci�n</li>
				<li><a href="javascript:void(0);"
					class="waves-effect <c:if test="${menuSelect=='wallet'}">active</c:if>">
						<i class="zmdi zmdi-balance-wallet"></i> <span> Mis Carteras </span>
					</a>
					<ul class="list-unstyled">
						<li class="<c:if test="${subMenuSelect=='create_wallet'}">active</c:if>">
							<a href="create_wallet.html">Crear nueva</a>
						</li>
						<li class="<c:if test="${subMenuSelect=='list_wallet'}">active</c:if>">
							<a href="list_wallet.html">Ver mis carteras</a>
						</li>
					</ul>
				</li>

				<li><a href="javascript:void(0);"
					class="waves-effect <c:if test="${menuSelect=='movement'}">active</c:if>">
						<i class="zmdi zmdi-money"></i> <span> Movimientos </span>
					</a>
					<ul class="list-unstyled">
						<li class="<c:if test="${subMenuSelect=='create_movement'}">active</c:if>">
							<a href="create_movement.html">Agregar</a>
						</li>
						<li class="<c:if test="${subMenuSelect=='list_movement'}">active</c:if>">
							<a href="list_movement.html">Ver mis movimientos</a>
						</li>
					</ul>
				</li>

				<li><a href="javascript:void(0);"
					class="waves-effect <c:if test="${menuSelect=='concept'}">active</c:if>">
						<i class="zmdi zmdi-label-alt""></i> <span> Conceptos </span>
					</a>
					<ul class="list-unstyled">
						<li class="<c:if test="${subMenuSelect=='create_concept'}">active</c:if>">
							<a href="form-elements.html">Agregar</a>
						</li>
						<li class="<c:if test="${subMenuSelect=='list_concept'}">active</c:if>">
							<a href="form-elements.html">Ver conceptos usados</a>
						</li>
					</ul>
				</li>

				<li><a href="profile.html" class="waves-effect"><i
						class="zmdi zmdi-account-box"></i> <span> Mi perfil </span> </a></li>

				<li><a href="statistics.html" class="waves-effect"><i
						class="zmdi zmdi-format-chart"></i> <span> Balance </span> </a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
		<!-- Sidebar -->
		<div class="clearfix"></div>

	</div>

</div>
<!-- Left Sidebar End -->