<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="services" id="services">

    <h1 class="heading"> MY <span>BILL</span> </h1>
 <c:forEach var="bill" items="${bill}">
    <div class="box-container">

        <div class="box">
           
            <h3>ID BILL</h3>
            <p> Giá Bill </p>
            <a href="/PatientMAnagement2/ViewDiseaseServlet?action=viewDiseaseDetail&diseaseID=${disease.IDdisease}" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

        
    </div>
  </c:forEach>
</section>
</body>
</html>