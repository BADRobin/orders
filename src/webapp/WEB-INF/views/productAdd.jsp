<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="templates/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <h1>Добавить продукт</h1>
        <br>
        <br>

        <form:form action="${pageContext.request.contextPath}/admin/inventory/add"
                   method="post" commandName="product" enctype="multipart/form-data">

            <div class="form-group">
                <label for="firstName"> Название продукта</label> <form:errors path="firstName" cssStyle="color: red"/>
                <form:input path="firstName" id="firstName" class="form-control" tabindex="1"/>
            </div>

            <div class="form-group">
                <label for="manufacturing"> Производитель </label>
                <form:input path="manufacturing" id="manufacturing" class="form-control" tabindex="2"/>
            </div>

            <div class="form-group">
                <label for="category"> Категория </label> <form:errors path="category" cssStyle="color: red"/>
                <form:select path="category" id="category" class="form-control" items="${category_list}"
                             tabindex="3"/>
            </div>

            <div class="form-group">
                <label for="description"> Описание продукта</label>
                <form:textarea path="description" id="description" class="form-control" tabindex="4"/>
            </div>

            <div class="form-group">
                <label for="condition"> Состояние продукта</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="condition" id="condition" value="Новый" tabindex="5"/> новый </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="condition" id="condition" value="используемый"/> используемый </label>
            </div>

            <div class="form-group">
                <label for="price"> Цена $Грн</label> <form:errors path="price" cssStyle="color: red"/>
                <form:input path="price" id="price" class="form-control" tabindex="6"/>
            </div>

            <div class="form-group">
                <label for="units_in_existence"> Доступные единицы </label> <form:errors
                    path="units_in_existence" cssStyle="color: red"/>
                <form:input path="units_in_existence" id="units_in_existence" class="form-control"
                            tabindex="7"/>
            </div>

            <%-- UPLOAD PRODUCT IMAGE ===================--%>
            <div class="form-group">
                <label class="control-label" for="image">Загрузить изображение</label>
                <br>
                <span>Рекомендуемый размер: 700 x 500.</span>
                <br>
                <form:input path="image" id="image" type="file" class="form:input-large" tabindex="8" size="2024000"/>
                <br>
            </div>

            <%-- SUBMIT/CANCEL BUTTON  ===========--%>
            <a href="<c:url value="/admin/inventory" />" class="btn btn-default" tabindex="10"> Отменить </a>
            <input type="submit" value="Добавить" class="btn btn-primary" tabindex="9">
        </form:form>

    </div>
</div>


<%@include file="templates/footer.jsp" %>
