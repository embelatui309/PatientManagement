<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<section class="book" id="book">
    
 <h1 class="heading"> <span>Create</span> Prescription </h1>   
 
    
 <div class="row" >
      <div class="image">
            <img src="images/book-img.svg" alt="">
        </div>
     <br>  <a onclick="loadRow()" class="btn"> Add Row <span class="fas fa-chevron-right"></span> </a>
     <form id="femo" action="CreatePrescription" method="POST">
         <input type="submit" value="SAVE" class="btn"><br> <br>  
     </form>
 </div>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function loadRow() {
   
        
           $.ajax({
          url: '/PatientMAnagement2/addRowforMedical',
          type: 'GET',
          
          success: function (data) {
              
               var option = document.getElementById("femo");
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