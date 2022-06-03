<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/headerStaff.jsp" %>
<section class="book" id="book">

      

    <div class="row">

        <div class="image">
            <img src="images/book-img.svg" alt="">
        </div>


        <form>
        	<h1 class="heading"> My Profile </h1>  
                <div class="responsive">
        <label>USER ID</label> <span><input type="text" name="UserID" readonly value="${UserID}" class="box"/></span> 
        <label>ID Faculty</label><span><input type="text" name="Career" required value="${FacultyID}" class="box"/></span>
        <label>Full Name:</label> <span><input type="text" name="name" value="${name}" required class="box"/></span>
        <label>Age:</label><span><input type="text" name="Age" required value="${Age}" class="box" /></span>
        <label>Birthday:</label><span><input  type="date" name="DOB" required value="${DOB}" class="box"/></span>
        <label>Address:</label><span><input type="text" name="Address" required value="${Address}" class="box"/></span>
        <label>Phone No:</label><span><input type="text" name="Phone" value="${Phone}" required class="box"/></span>
        <label>Email:</label><span><input type="text" name="email" required value="${email}" class="box"/></span>
        <label>CCCD:</label><span><input type="text" name="cccd" required value="${cccd}" class="box"/></span>
        <label>Gender:</label>
        <label>Male</label><span><input type="radio" name="gender" value="male" id="male" class="box" ${male} ></span>
        <label>Female</label><span><input type="radio" name="gender" value="female" id="female" class="box" ${female}></span>     
        <label>Password:</label><span><input type="password" name="Password" required value="${Password}" class="box"/></span>

            <input type="submit" value="Update" class="btn">
                </div>
            </form>

    </div>

</section>
</body>
</html>