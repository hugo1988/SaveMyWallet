<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Begin page -->

<div class="row">
	<div class="col-sm-12">
		<div class="card-box">
			<div class="row">
				<div class="col-lg-6"><br/>
					<a href="list_wallet.html">
						<button type="button"
							class="btn btn-primary btn-bordred waves-effect w-md waves-light m-b-5"><i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; Volver
							a mis Carteras</button>
					</a><br/><br/>
					<form class="form-horizontal" action="add_wallet.html"
						method="post">
						<div class="form-group">
							<label class="col-sm-2 control-label">Nombre</label>
							<div class="col-sm-10">
								<input required maxlength="20" class="form-control" name="name"
									placeholder="Nombre de la cartera" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Descripción</label>
							<div class="col-sm-10">
								<textarea maxlength="40" required class="form-control" name="description" rows="5"
									placeholder="Decripción representativa de esta cartera"></textarea>
							</div>
						</div>
						<div align="center">
							<button type="submit" class="btn btn-success waves-effect waves-light"><i class="fa fa-plus-square" aria-hidden="true"></i>&nbsp; Agregar</button>
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