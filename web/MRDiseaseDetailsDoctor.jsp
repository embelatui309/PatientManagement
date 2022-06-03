<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<section class="book" id="book">

      

    <div class="row">

      <form >
        	<h1 class="heading"> Disease Detail </h1>  
                <div class="responsive">
        <label>Disease Name</label><span><input type="text" name="diseaseName" readonly required value="${disease.diseaseName}" class="box" /></span>
        <label>Disease Description</label><span><textarea  type="text" name="diseaseDescription" readonly required  class="box">${disease.diseaseDescription}</textarea></span>
                </div>
            </form>

    </div>

</section>
</body>
</html>