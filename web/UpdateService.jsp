<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>
<section class="book" id="book">

      

    <div class="row">

       
  <form action="UpdateService" method="POST">
        	<h1 class="heading"> Service Detail </h1>  
                <div class="responsive">
        <label>Service ID</label> <span><input type="text" name="IDService" readonly value="${IDService}" class="box"/></span> 
        <label>Service Name</label> <span><input type="text" name="nameService"  value="${nameService}" required class="box"/></span>
        <label>Service Price</label><span><input type="text" name="priceService"  required value="${priceService}" class="box" /></span>
        <label>Service Description</label><span><textarea  type="text" name="decsriptionService"  required  class="box">${decsriptionService}</textarea></span>
           <input type="submit" value="SAVE" class="btn">
                </div>
            </form>
    </div>

</section>
</body>
</html>