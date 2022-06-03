<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="Patients" id="Patients">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- The form -->
<form class="searchbar" action="SearchServlet" method="POST">
    <input oninput="loadPatient(this)" type="text" placeholder="Search.." id="search" name="search">
  <button name="Who" value="Patient" type="submit"><i class="fa fa-search"></i></button>
</form>
    <h1 class="heading">Patients<span> List</span> </h1>
    <div class="box-container" id="PatientList">
        <c:forEach var="patient" items="${patients}">
            <div class="box">
                <img src="image/doc-1.jpg" alt="">
                <h3>${patient.user_Name}</h3>
                <p>${patient.ID_User}</p>
                <span><c:if test="${patient.gender == true}">
                        <c:out value="Giới tính: Nam;"></c:out>
                      </c:if>
                      <c:if test="${patient.gender == false}">
                        <c:out value="Giới tính: Nữ;"></c:out>
                      </c:if>
                </span>
                <div class="share">
                    <a href=" /PatientMAnagement2/ViewListPatientServlet?action=viewpatientprofile&id=${patient.ID_User}" class="fab fa-linkedin"></a>
                </div>
            </div>
        </c:forEach>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function loadPatient(param) {
                var txtSearch =param.value;
           $.ajax({
          url: '/PatientMAnagement2/SearchPatientAjax',
          type: 'GET',
           data : {
               txtSearch : txtSearch 
           },
          success: function (data) {
              
               var option = document.getElementById("PatientList");
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
