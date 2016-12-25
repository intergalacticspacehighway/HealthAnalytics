<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:set var= "x" value="${flag }"></c:set>
<c:if test="${x!=0 }">
State Already Present!!

</c:if>