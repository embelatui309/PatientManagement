<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="book" id="book">

      

    <div class="row">

        <form action="DoctorServlet" method="POST">
        	<h1 class="heading"> Schedule Detail </h1>  
                <div class="responsive">
        <label>Schedule ID</label> <span><input type="text" name="IDService" readonly value="${schedule.ID_SCHEDULE}" class="box"/></span> 
        <label>Doctor ID :</label> <a href="/PatientMAnagement2/ViewDoctorServlet?action=viewDoctorDetail&dID=${schedule.ID_Staff}" class="btn" readonly > ${schedule.ID_Staff} <span class="fas fa-chevron-right"></span> </a> <br>
        <label>Patient ID :</label> <a href="/PatientMAnagement2/ViewListPatientServlet?action=viewpatientprofile&id=${schedule.ID_Patient}" class="btn" readonly> ${schedule.ID_Patient} <span class="fas fa-chevron-right"></span> </a> <br>
        <label>Service ID :</label> <a href="/PatientMAnagement2/ViewServiceServlet?action=viewServiceDetail&serviceID=${schedule.serviceld}" class="btn" readonly> ${schedule.serviceld} <span class="fas fa-chevron-right"></span> </a> <br>
        <label>Date of Appointment</label><span><input  type="date" name="DOB" required readonly value="${schedule.date_apm}" class="box"/></span>
        <label>Start Time:</label><span><input  type="time" name="DOB" required readonly value= "${schedule.start_Time}" class="box"/></span>
        <label>End Time:</label><span><input  type="time" name="DOB" required readonly value="${schedule.end_Time}" class="box"/></span>
        <c:if test="${schedule.confirm == 'No Reply'}">
        <a href="<c:out value="/PatientMAnagement2/ConfirmScheduleServlet?action=accept&id=${schedule.ID_SCHEDULE}"></c:out>" class="btn"> Accept <span class="fa-regular fa-thumbs-up"></span> </a> 
        <a href="<c:out value="/PatientMAnagement2/ConfirmScheduleServlet?action=delete&id=${schedule.ID_SCHEDULE}"></c:out>" class="btn"> Delete <span class="fa-regular fa-thumbs-down"></span> </a>
        </c:if>
                </div>
        </form>

    </div>

</section>
</body>
</html>