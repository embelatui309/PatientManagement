<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="book" id="book">
    <div class="row">
        <div class="image">
            <img src="images/book-img.svg" alt="">
        </div>

        <form >
        	<h1 class="heading"> My Profile </h1>  
                <div class="responsive">
        <label>USER ID</label> <span><input type="text" name="UserID" readonly value="${patient.ID_User}" class="box"/></span> 
        <label>Full Name:</label> <span><input type="text" name="name" readonly value="${patient.user_Name}" required class="box"/></span>
        <label>Age:</label><span><input type="text" name="Age" required readonly value="${patient.user_AGE}" class="box" /></span>
        <label>Birthday:</label><span><input  type="date" name="DOB" required readonly value="${patient.DOB}" class="box"/></span>
        <label>Address:</label><span><input type="text" name="Address" required readonly value="${patient.addressUser}" class="box"/></span>
        <label>Phone No:</label><span><input type="text" name="Phone" readonly value="${patient.phone}" required class="box"/></span>
        <label>Email:</label><span><input type="text" name="email" required readonly value="${patient.email}" class="box"/></span>
        <label>CCCD:</label><span><input type="text" name="cccd" required readonly value="${patient.CCCD}" class="box"/></span>
        <label>Career:</label><span><input type="text" name="Career" required readonly value="${patient.PATIENT_CAREER}" class="box"/></span>
        <label>BHYT No:</label><span><input type="text" name="codebhyt" required readonly value="${patient.CODEBHYT}" class="box"/></span>
        <label>Gender:</label>
        <label>Male</label><span><input type="radio" name="gender" value="male" id="male" class="box" readonly <c:if test="${patient.gender}">CHECKED</c:if>></span>
        <label>Female</label><span><input type="radio" name="gender" value="female" id="female" class="box" readonly <c:if test="${patient.gender}">CHECKED</c:if>></span>     
                </div>
                 <a href="/PatientMAnagement2/CreateAndUpdateMedicalRecord?action=Create&patientID=${patient.ID_User}" class="btn"> plus Medical Record <span class="fas fa-chevron-right"></span>
            </form>
    </div>
</section>
</body>
</html>