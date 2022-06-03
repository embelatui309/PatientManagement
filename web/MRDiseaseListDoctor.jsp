<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="services" id="services">
    <h1 class="heading">  <span>Diseases</span> </h1>
 
    <div class="box-container">
        <c:forEach var="disease" items="${mrdisease}">
        <div class="box">
            <h3>${disease.diseaseName}</h3>
            <p>  ${disease.date_Diagnose}</p>
            <a href="/PatientMAnagement2/ViewDiseaseServlet?action=viewDiseasesDetail&IDDI=${disease.ID_DISEASE}" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>       
  </c:forEach>
    </div>
  
</section>
<section class="book" id="book">


<div class="row">
    <a onclick="loadForm()" class="btn"> Add Form <span class="fas fa-chevron-right"></span> </a>
<form id="feo" action="DiagnoseDiseaseServlet" method="POST">
        <input type="submit" value="SAVE" class="btn"><br> <br>  
</form>
</div>
 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function loadForm() {
   
        
           $.ajax({
          url: '/PatientMAnagement2/addFormDiagnoseDIAjax',
          type: 'GET',
          
          success: function (data) {
              
               var option = document.getElementById("feo");
               option.innerHTML += data;
               
              
          },
          error: function () {
           
      }
}); 
        }
    </script>
</section>
</body>
</html>