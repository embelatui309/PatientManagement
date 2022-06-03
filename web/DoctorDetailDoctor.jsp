<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerDoctor.jsp" %>


    <section class="book" id="book">
 

        <div class="row">

            <div class="image">
                <img src="images/book-img.svg" alt="">
            </div>

            <form>
                <h1 class="heading"> Doctor Profile </h1>  
                <div class="responsive">
        <label>USER ID</label> <span><input type="text" name="UserID" readonly value="${ddt.ID_User}" class="box"/></span> 
        <label>Full Name:</label> <span><input type="text" name="name" readonly value="${ddt.user_Name}" required class="box"/></span>
        <label>Age:</label><span><input type="text" name="Age" required readonly value="${ddt.user_AGE}" class="box" /></span>
        <label>Birthday:</label><span><input  type="text" name="DOB" required readonly value="${ddt.DOB}" class="box"/></span>
    
        <label>Phone No:</label><span><input type="text" name="Phone" readonly value="${ddt.phone}" required class="box"/></span>
        <label>IDF :</label><span><input type="text" name="IDF" readonly value="${ddt.idfaculty}" required class="box"/></span>
        <label>Email:</label><span><input type="text" name="email" required readonly value="${ddt.email}" class="box"/></span>
       
        <label>Gender:</label>
        <label>Male</label><span><input type="radio" name="gender" value="male" id="male" class="box" readonly ${male}/></span>
        <label>Female</label><span><input type="radio" name="gender" value="female" id="female" class="box" readonly ${female} /></span>  
            </div>
        </form>

    </div>

</section>
</body>
</html>