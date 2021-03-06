<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Begin page -->

<div class="row">
	<div class="col-sm-12">
		<div class="card-box">
			<div class="row">
				<div class="col-lg-6">
					<a href="list_wallet.html">
						<button type="button"
							class="btn btn-primary btn-bordred waves-effect w-md waves-light m-b-5">
							<i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; Volver
							a mis Carteras
						</button>
					</a><br />
					<br />
					<h4 class="m-b-30 m-t-0 header-title">
						<b>${pageTitle} " ${wallet.getName()}"</b>
					</h4>

					<form class="form-horizontal" action="update_wallet.html"
						method="post">
						<div class="form-group">
							<label class="col-sm-2 control-label">Nombre</label>
							<div class="col-sm-10">
								<input type="hidden" name="id_wallet" value="${wallet.getId()}" />
								<input class="form-control" maxlength="20" required
									name="name_wallet" placeholder="Nombre de la cartera"
									value="${wallet.getName()}" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Descripción</label>
							<div class="col-sm-10">
								<textarea maxlength="40" required class="form-control"
									name="description" rows="5"
									placeholder="Decripción representativa de esta cartera">${wallet.getDescription()}</textarea>
							</div>
						</div>
						<div align="center">
							<button type="submit"
								class="btn btn-success waves-effect waves-light">
								<i class="fa fa-check-square" aria-hidden="true"></i>&nbsp;
								Editar
							</button>
						</div>
					</form>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
	</div>
	<!-- end col -->
</div>
<!-- end row -->