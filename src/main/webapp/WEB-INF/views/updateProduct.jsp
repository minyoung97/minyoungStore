<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-wrapper">
	<div class="container">
		<h1>Update Product</h1>
		<p class="lead">Fill the below information to update a product:</p>
		<!-- 나중에 submit 버튼 눌릴때 post 메소드로 값을 넘길겨 -->
		<sf:form
			action="${pageContext.request.contextPath}/admin/productInventory/updateProduct"
			method="post" modelAttribute="product">

			<sf:hidden path="id"/>
			<!-- 상품명 form -->
			<div class="form-group">
				<label for="name">Name</label>
				<sf:input path="name" id="name" class="form-control"
					placeholder="상품명 입력" />
					<sf:errors path="name" cssStyle="color:#ff0000;" />
			</div>

			<!-- 카테고리 form -->
			<dlv class="form-group"> <label for="category">Category</label>
			<sf:radiobutton path="category" id="category" value="컴퓨터" /> 컴퓨터 <sf:radiobutton
				path="category" id="category" value="가전" /> 가전 <sf:radiobutton
				path="category" id="category" value="잡화" /> 잡화 </dlv>

			<!-- 가격 form -->
			<div class="form-group">
				<label for="price">Price</label>
				<sf:input path="price" id="price" class="form-control" />
				<sf:errors path="price" cssStyle="color:#ff0000;" />
			</div>

			<!-- 제조사 form -->
			<div class="form-group">
				<label for="manufacturer">Manufacturer</label>
				<sf:input path="manufacturer" id="manufacturer" class="form-control"
					placeholder="제조사 입력" />
					<sf:errors path="manufacturer" cssStyle="color:#ff0000;" />
			</div>

			<!-- 재고 form -->
			<div class="form-group">
				<label for="unitInStock">unitInStock</label>
				<sf:input path="unitInStock" id="unitInStock" class="form-control"
					palceholder="재고 입력" />
					<sf:errors path="unitInStock" cssStyle="color:#ff0000;" />
			</div>

			<!-- 상품설명 form -->
			<div class="form-group">
				<label for="description">Description</label>
				<sf:textarea path="description" id="description"
					class="form-control" placeholder="상품 설명 입력" />
			</div>

			<!-- 제출 버튼! 누르면 위 에있는 post 메소드로 날라감-->
			<input type="submit" value="submit" class="btn btn-info">

			<!-- 취소누르면 재고현황으로 다시 돌아감! -->
			<a href="<c:url value="/admin/productInventory" />"
				class="btn btn-secondary">Cancel</a>
		</sf:form>
		<br />
	</div>
</div>


