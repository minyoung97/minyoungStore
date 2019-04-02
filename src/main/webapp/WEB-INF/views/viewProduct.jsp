<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-wrapper">
	<div class="container">
		<h2>Product Detail</h2>
		Here is the detail information of the product!!
		<p>제품 상세 정보 페이지입니다~
		<div class="row">
			<div class="col-md-6">
				<c:set var="imageFilename"
					value="/resources/images/${product.name}.jpg" />
				<img src="<c:url value="${imageFilename}" />" alt="image"
					style="width: 80%" />
			</div>
			<div class="col-md-6">
				<h3>${product.name}</h3>
				<p>${product.description}</p>
				<p>
					<b>Manufacturer</b> : ${product.manufacturer}
				</p>
				<p>
					<b>Category</b> : ${product.category}
				</p>
				<p>
				<h3>${product.price}원</h3>
				</p>

			</div>
		</div>
	</div>