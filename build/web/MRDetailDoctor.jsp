<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<section class="book" id="book">

      

    <div class="row">

        <form action="" method="POST">
        	<h1 class="heading"> Medical Record Detail </h1>  
                <div class="responsive">
        <label>Medical Record ID</label> <span><input type="text" name="MedicalRecordID" readonly value="${mr.medicalRecordId}" class="box"/></span> 
        <label>Symptom:</label><span><textarea  type="text" name="decsriptionService"  required  class="box">${mr.symtoms}</textarea></span>
        <label>Date Created:</label><span><input  type="date" name="DateCreated" required value="${mr.createDate}" class="box"/></span>
        <label>Doctor ID :</label> <a href="/PatientMAnagement2/ViewDoctorServlet?action=viewDoctorDetail&dID=${mr.doctor}" class="btn"> ${mr.doctor} <span class="fas fa-chevron-right"></span> </a> 
        <label>Patient ID :</label> <a href="/PatientMAnagement2/ViewListPatientServlet?action=viewpatientprofile&id=${mr.patient}" class="btn"> ${mr.patient} <span class="fas fa-chevron-right"></span> </a> <br>
        <label>  List Disease:</label> <a href="/PatientMAnagement2/ViewDiseaseServlet?action=viewdiseases&IDMR=${mr.medicalRecordId}" class="btn"> Click Here <span class="fas fa-chevron-right"></span> </a> 
        <label>  List Prescription :</label> <a href="/PatientMAnagement2/ViewPrescriptionServlet?action=viewPres&IDMR=${mr.medicalRecordId}" class="btn"> Click Here <span class="fas fa-chevron-right"></span> </a> <br>

          <a href="/PatientMAnagement2/CreateAndUpdateMedicalRecord?action=Update&idmr=${mr.medicalRecordId}" class="btn"> Update <span class="fas fa-chevron-right"></span> </a>
                </div>
            </form>

    </div>

</section>
</body>
</html>