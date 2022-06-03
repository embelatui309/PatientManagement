<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="utf-8"  import="Model.*,java.util.*"%>

<%@ include file="/includes/headerDoctor.jsp" %>

<section  class="doctors" id="Doctor">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- The form -->
<form class="searchbar" action="SearchServlet" method="POST">
    <input oninput="loadDoctor(this)" type="text" placeholder="Search.." name="search">
  <button name="Who" value="Doctor" type="submit"><i class="fa fa-search"></i></button>
</form>
    <h1 class="heading">Doctor<span> List</span> </h1>
     <div class="box-container" id="DoctorList">
                   <c:forEach var="dt" items="${listD}">
                      <div class="box">
                            <img src="image/doc-1.jpg" alt="">
                             <h3><c:out value="${dt.ID_User}"></c:out></h3>
                            <span><c:out value="${dt.user_Name}"></c:out></span></a>
                            
                            <span><c:if test="${dt.gender == true}">
                                    <c:out value="Giới tính: Nam;"></c:out>
                                </c:if>
                                <c:if test="${dt.gender == false}">
                                    <c:out value="Giới tính: Nữ;"></c:out>
                                </c:if>
                            </span>                               
                            
                                <div class="share">
          
                                    <a href="/PatientMAnagement2/ViewDoctorServlet?action=viewDoctorDetail&dID=${dt.ID_User}" class="fab fa-linkedin"></a>
                                </div>
                      </div>
             
        </c:forEach> 

     </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function loadDoctor(param) {
                var txtSearch =param.value;
           $.ajax({
          url: '/PatientMAnagement2/SearchDoctorAjax',
          type: 'GET',
           data : {
               txtSearch : txtSearch 
           },
          success: function (data) {
              
               var option = document.getElementById("DoctorList");
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