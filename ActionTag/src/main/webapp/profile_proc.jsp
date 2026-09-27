<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	    <jsp:useBean id="profile" class="com.action.Member" scope="page"></jsp:useBean>
	    <jsp:setProperty property="*" name="profile"/>
	    <%
	    		if (profile.getName() != null && !profile.getName().isBlank()) {
	    %>
	    <jsp:forward page="profile_view.jsp" />
	    <%--
	    <jsp:getProperty property="name" name="profile"/>
	    <jsp:getProperty property="email" name="profile"/>
	    --%>
	    <% } else { %>
	    </jsp:forward page="error.jsp" />
	    <% } %>
