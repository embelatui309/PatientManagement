<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="services" id="services">

    <h1 class="heading"> our <span>services</span> </h1>
 
    <div class="box-container">
        <c:forEach var="schedule" items="${schedules}">
        <div class="box">
            <h3>${schedule.serviceName}</h3>
            <p>Date of Appointment : ${schedule.date_apm}</p>
            <p>Start time : ${schedule.start_Time}</p> 
            <p>End time : ${schedule.end_Time}</p>
            <a href="<c:out value="/PatientMAnagement2/ViewScheduleServlet?action=viewscheduledetail&id=${schedule.ID_SCHEDULE}"></c:out>" class="btn"> Detail <span class="fas fa-chevron-right"></span> </a>
        </div>
         </c:forEach>
    </div>
 
</section>
</body>
</html>>