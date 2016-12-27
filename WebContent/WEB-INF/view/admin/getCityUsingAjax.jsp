<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- <select id="stateMenu" name="stateName" class="form-control"> -->
<option value="">Select City</option> 
<c:forEach items="${sessionScope.list }" var = "i">
<option value="${i.cityId}">${i.cityName}</option> 

</c:forEach>
<!-- </select> -->