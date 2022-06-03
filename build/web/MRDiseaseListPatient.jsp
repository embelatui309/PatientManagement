<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="services" id="services">

    <h1 class="heading">  <span>Diseases</span> </h1>
 <c:forEach var="disease" items="${mrdisease}">
    <div class="box-container">

        <div class="box">
           
            <h3>${disease.diseaseName}</h3>
            <p>  ${disease.date_Diagnose}</p>
            <a href="/PatientMAnagement2/ViewDiseaseServlet?action=viewDiseasesDetail&IDDI=${disease.ID_DISEASE}" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

        
    </div>
  </c:forEach>
</section>
</body>
</html>