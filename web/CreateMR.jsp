<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<section class="book" id="book">

    <h1 class="heading"> <span>Create</span> Medical Record </h1>    

    <div class="row responsive" >
        <form action="CreateAndUpdateMedicalRecord" method="POST">
        
            <label>ID Patient</label><input type="text" value="${patientID}" name="IDPatient" class="box">
            <label>ID Doctor</label><input type="text"  readonly value="${acc.user}" name="IDDoctor" class="box">
            <label>Symptom</label><textarea class="box" name="Symptom">Here</textarea>
            <label>Date Created</label><input type="date" name="DateCreated" placeholder="" class="box">
            
            <input type="submit" name="btn" value="Create" class="btn">
        </form>

    </div>

</section>

</body>
</html>