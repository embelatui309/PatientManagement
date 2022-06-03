<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="services" id="services">
<form class="searchbar" action="SearchServlet" method="POST">
  <input oninput="loadService(this)" type="text" placeholder="Search.." id="search" name="search">
  <button name="Who" value="Service" type="submit"><i class="fa fa-search"></i></button>
</form>
    <h1 class="heading"> our <span>services</span> </h1>
    <div id="sea">
    <c:forEach var="service" items="${services}">
    <div class="box-container">

        <div class="box">
           
            <h3>${service.nameService}</h3>
            <p>IDF:$ ${service.idf}</p><br>
            <p>Cost:$ ${service.priceService}</p>
            <a href="/PatientMAnagement2/ViewServiceServlet?action=viewServiceDetail&serviceID=${service.IDService}" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

        
    </div>
  </c:forEach>
  </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function loadService(param) {
                var txtSearch =param.value;
           $.ajax({
          url: '/PatientMAnagement2/SearchServletAjax',
          type: 'GET',
           data : {
               txtSearch : txtSearch 
           },
          success: function (data) {
              
               var option = document.getElementById("sea");
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