<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerAdmin.jsp" %>
<section class="book" id="book">

      

    <div class="row">

        <div class="image">
            <img src="images/book-img.svg" alt="">
        </div>

        <form action="CreateService" method="POST">
        	<h1 class="heading"> Create Service </h1>  
                <div class="responsive">
        <label>Service Name:</label> <span><input type="text" name="ServiceName" required class="box"/></span>
        <label>Price of Service:</label><span><input type="text" name="Price" required class="box" /></span>
        <label>Description : </label><span> <textarea type="text" name="Descitption" required class="box"></textarea></span>
            <input type="submit" value="SAVE" class="btn">
                </div>
            </form>

    </div>

</section>
</body>
</html>