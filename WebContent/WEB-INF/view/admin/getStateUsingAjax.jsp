<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- <select id="stateMenu" name="stateName" class="form-control"> -->
<option value="">Select State</option> 
<c:forEach items="${sessionScope.list }" var = "i">
<c:if test="${i.isActive == 'yes' }">
<option value="${i.stateId}">${i.stateName}</option> 
</c:if>
</c:forEach>
<!-- </select> -->