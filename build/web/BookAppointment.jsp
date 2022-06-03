<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerPatient.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="book" id="book">

    <h1 class="heading"> <span>book</span> now </h1>    

    <div class="row">

        <div class="image">
            <img src="images/book-img.svg" alt="">
        </div>

        <form action="BookAppointmentServlet" method="POST">
             <div class="responsive">
            <h3>book appointment</h3>
            <label>Patient: </label>
            <input type="text" readonly value="${patient}" name="IDPatient" class="box">
            <label>Service: </label>
            <select onchange="loadStaff(this)"  id="ServiceID"  name="ServiceID" class="box">
                      <option value="">!---!---!</option>
                      <c:forEach var="sv" items="${services}">
                <option  value="${sv.IDService}">${sv.nameService}</option>  
                      </c:forEach>
                   </select>
              <label> Staff : </label>
              <select   id="Staff" name="Staff" class="box">
                <option value="">!---!---!</option>
             
                   </select>
             <label> Date of Appointment : </label>
            <input type="date" id="dateapp" name="dateapp" class="box">             
            <label> Start Time : </label>
            <input type="time" id="StartTime" name="StartTime" class="box">
            <label > End Time : </label>
            <input type="time" id="EndTime" name="EndTime" class="box">
            <input type="submit" value="book now" class="btn">
             </div>
            </form>

    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function loadStaff(param) {
                var txtSearch =param.value;
           $.ajax({
          url: '/PatientMAnagement2/LoadDoctorForBook',
          type: 'GET',
           data : {
               ServiceID : txtSearch 
           },
          success: function (data) {
              
               var option = document.getElementById("Staff");
               option.innerHTML = data;
              
          },
          error: function () {
           
      }
}); 
        }
    </script>
</section>
  
</body>
</html>