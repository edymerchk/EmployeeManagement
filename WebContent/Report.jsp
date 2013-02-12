<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%><%@taglib
	uri="http://java.sun.com/jsf/core" prefix="f"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report</title>
</head>
<body>

<f:view>
	<h:form>
	<center><h2>Report</h2></center>
	
	<center>
	
	<h:panelGrid border="1" columns="2">
			<h:outputText value="Technology"></h:outputText>
			<h:selectOneMenu id="SelTech" value="#{employeeBean.technology}" valueChangeListener="#{employeeBean.getEmployeesByTechnology}" onchange="submit()">
				<f:selectItem itemLabel="--select--"></f:selectItem>
				<f:selectItems value="#{employeeBean.availableTechList}"/>
			</h:selectOneMenu>			
	</h:panelGrid>
	<br><br>
	
	<h:dataTable border="1" value="#{employeeBean.empList}" var="row">
		<h:column id="column1">
			<f:facet name="header">
				<h:outputText value="Registration Id"></h:outputText>
			</f:facet>
				<h:outputText value="#{row.regId}"></h:outputText>
		</h:column>
		<h:column id="column2">
			<f:facet name="header">
				<h:outputText value="Name"></h:outputText>
			</f:facet>
			<h:outputText value="#{row.name}"></h:outputText>
		</h:column>
		<h:column id="column3">
			<f:facet name="header">
				<h:outputText value="Experience"></h:outputText>
			</f:facet>
			<h:outputText value="#{row.experience}"/>
		</h:column>
		<h:column id="column4">
			<f:facet name="header">
				<h:outputText value="Description"></h:outputText>
			</f:facet>
			<h:outputText value="#{row.description}"/>
		</h:column>
	</h:dataTable>
		
	</center>
	
	</h:form>
	
	<h:outputText value="#{employeeBean.message}" styleClass="errors"></h:outputText>
	<br>
	<h:messages></h:messages>
	<br />
	<h:outputLink value="Home.jsp">Home</h:outputLink>
</f:view>

</body>
</html>