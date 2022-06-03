<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="book" id="book">

      

    <div class="row">

        <form >
        	<h1 class="heading"> Bill Detail list tất cả bill detail </h1>  
                <div class="responsive">
        <label>2</label><span><input type="text" name="priceService" readonly required value="${diseaseName}" class="box" /></span>
        <label>1</label><span><textarea  type="text" name="decsriptionService" readonly required  class="box">${disease.description}</textarea></span>
                </div>
            </form>

    </div>

</section>
</body>
</html>