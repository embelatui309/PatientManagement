<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<section class="book" id="book">

    <h1 class="heading"> Prescription ${IDPRE}</h1>    
    <c:forEach var="pre" items="${presDetail}">
   
<div class="row">

        <form >
        	
                <div class="responsive">
        <label>Medicine</label><span><input type="text" name="name" readonly required value="${pre.medicalName}" class="box" /></span>
        <label>Quantity </label><span><input type="text" name="Quantity" readonly required value="${pre.quantity}" class="box" /></span>
        
                </div>
            </form>

    </div>
</c:forEach>
</section>
</body>
</html>


