<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.jsp" %>
<section class="book" id="book">

    <h1 class="heading"> <span>Update</span> Medical Record </h1>    

    <div class="row responsive" >
        <form action="CreateAndUpdateMedicalRecord" method="POST">
            <label>Medical Record ID</label><input type="text" value="${mr.patient}" name="IDMR" class="box">
            <label>ID Patient</label><input type="text" value="${mr.patient}" name="IDPatient" class="box">
            <label>ID Doctor</label><input type="text"  readonly value="${acc.user}" name="IDDoctor" class="box">
            <label>Symptom</label><textarea class="box"  name="Symptom">${mr.symtoms}</textarea>
            <label>Date Created</label><input type="date" name="DateCreated" value="${mr.createDate}" class="box">
            <input type="submit" name="btn" value="Update" class="btn">
        </form>

    </div>

</section>

</body>
</html>