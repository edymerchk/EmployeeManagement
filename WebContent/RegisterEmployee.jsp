<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%><%@taglib
	uri="http://java.sun.com/jsf/core" prefix="f"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<f:view>
	<center>
	<h:form>
		<h:panelGrid border="1" columns="2">
			<h:outputText value="Employee Name"></h:outputText>
			<h:inputText id="txtEmpName" value="#{employeeBean.name}"  required="true" requiredMessage="Insert a Name"> 
			</h:inputText>
			
			<h:outputText value="Employee Experience"></h:outputText>
			<h:inputText id="txtEmpExp" value="#{employeeBean.exp}" required="true" requiredMessage="Insert a Value ">
				<f:validator validatorId="expValidator"/>
			</h:inputText>
			
			<h:outputText value="Technology"></h:outputText>
			<h:selectOneMenu id="txtEmpList" value="#{employeeBean.technology}" required="true" requiredMessage="Select a Technology ">
				<f:selectItem itemLabel="--- Select ---"/> 
				<f:selectItem itemLabel="JAVA" itemValue="JAVA"/> 
				<f:selectItem itemLabel="OS" itemValue="OS"/> 
				<f:selectItem itemLabel="DOTNET" itemValue="DOTNET"/>
				<f:selectItem itemLabel="MF" itemValue="MF"/>
				<f:selectItem itemLabel="OTHER" itemValue="OTHER"/>
			</h:selectOneMenu>
			
			<h:outputText value="Description"></h:outputText>
			<h:inputTextarea id="txtEmpDesc" value="#{employeeBean.description}" required="true" requiredMessage="Insert a Description"></h:inputTextarea>
			
			<h:commandButton type="submit" value=" Register " action="#{employeeBean.addEmployee}"></h:commandButton>
			<h:commandButton type="reset" value=" Reset "></h:commandButton>
		</h:panelGrid>
		<h:outputLink value="Home.jsp">Home</h:outputLink>
	</h:form>
	</center>
	<h:messages></h:messages><br>
	<h:outputLabel value="#{employeeBean.message}" />
</f:view></body>
</html>