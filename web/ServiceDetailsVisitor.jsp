<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.jsp" %>
<section class="book" id="book">

      

    <div class="row">

        <form >
        	<h1 class="heading"> Service Detail </h1>  
                <div class="responsive">
        <label>Service ID</label> <span><input type="text" name="IDService" readonly value="${IDService}" class="box"/></span> 
        <label>Service Name</label> <span><input type="text" name="nameService" readonly value="${nameService}" required class="box"/></span>
          <label>Faculty</label> <span><input type="text" name="idf" readonly value="${idf}" required class="box"/></span>
        <label>Service Price</label><span><input type="text" name="priceService" readonly required value="${priceService}" class="box" /></span>
        <label>Service Description</label><span><textarea  type="text" name="decsriptionService" readonly required class="box">${decsriptionService}</textarea></span>
                </div>
            </form>

    </div>

</section>
</body>
</html>