<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="uv" tagdir="/WEB-INF/tags" %>

<%@attribute name="account" type="org.synyx.urlaubsverwaltung.account.Account" required="true" %>
<%@attribute name="className" type="java.lang.String" required="false" %>

<div class="box ${className}">
    <span class="box-icon tw-w-16 tw-h-16 tw-bg-green-500">
        <uv:icon-calendar className="tw-w-8 tw-h-8" />
    </span>
    <span class="box-text">
        <c:choose>
            <c:when test="${account != null}">
                <spring:message code="person.account.vacation.entitlement"
                                arguments="${account.vacationDays}"/>
                <spring:message code="person.account.vacation.entitlement.remaining"
                                arguments="${account.remainingVacationDays}"/>
            </c:when>
            <c:otherwise>
                <spring:message code='person.account.vacation.noInformation'/>
            </c:otherwise>
        </c:choose>
    </span>
</div>
