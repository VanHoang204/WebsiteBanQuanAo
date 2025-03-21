<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="container">
	<div class="row content">
		<%-- <div class="col-sm-2">
			<h1>
				<small>Loại Sản Phẩm</small>
			</h1>
			<ul class="nav nav-pills nav-stacked" data-spy="affixx"
				data-offset-top="333">
				<c:forEach var="cate" items="${ categories }">
					<li><a href="/shop/${ cate.id }">${ cate.name }</a></li>
				</c:forEach>
			</ul>
		</div> --%>
		<br>
		<div class="col-sm-12">
			<h4 class="text-primary">${ category }</h4>
			<c:if test="${ products.isEmpty() }">
				<h1 style="padding: 169px;">
					<small>Không có sản phẩm</small>
				</h1>
			</c:if>
			<c:forEach var="p" items="${ products }">
				<div class="col-sm-3">
					<div class="panel panel-info text-center">
						<div class="panel-heading">${ p.name }</div>
						<div class="panel-body">
<%--							--%>
						</div>
						<div class="panel-footer">
							<h4 class="text-info">
								<b> ${ p.price.toString().replace(".0", " VNĐ") }</b>
							</h4>
							<a href="/cart/add/${p.id}">
							<button class="btn btn-primary">Thêm Vào Giỏ Hàng</button>
							</a>
							
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>

