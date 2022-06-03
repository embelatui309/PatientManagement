<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerPatient.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="services" id="services">

    <h1 class="heading">  <span>Prescription</span> </h1>
 <c:forEach var="pres" items="${pres}">
    <div class="box-container">

        <div class="box">
           
            <h3>${pres.IDPRE}</h3>
            <p> ${pres.date_createDate} </p>
            <a href="/PatientMAnagement2/ViewPrescriptionServlet?action=viewPresDetail&IDPRE=${pres.IDPRE}" class="btn"> Detail <span class="fas fa-chevron-right"></span> </a>
        </div>

        
    </div>
  </c:forEach>
</section>
</body>
</html>