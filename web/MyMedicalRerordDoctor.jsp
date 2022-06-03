<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="services" id="services">

    <h1 class="heading"> My <span>Medical Record</span> </h1>
 <c:forEach var="mr" items="${mrs}">
    <div class="box-container">

        <div class="box">
           
            <h3>${mr.medicalRecordId}</h3>
           
            <a href="/PatientMAnagement2/ViewMedicalRecordServlet?action=viewMRDetail&userID=${acc.user}&idmr=${mr.medicalRecordId}" class="btn"> Detail <span class="fas fa-chevron-right"></span> </a>
        </div>

        
    </div>
  </c:forEach>
   <a href="/PatientMAnagement2/CreateAndUpdateMedicalRecord?action=Create" class="btn"> Create Medical Record <span class="fas fa-chevron-right"></span> </a>
</section>
</body>
</html>