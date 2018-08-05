 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

   



	<table border="1">
		<tr>
			<th>Event Name</th>
			<th>Event Category</th>
			<th>Ticket Price</th>
			<th>Seats Available</th>
			<th>Event Date</th>
			<th>Buy</th>
		</tr>
		
		  <c:forEach var="emp" items="${list}"> 
    <tr>
   
    <td>${emp.eventname}</td>
    <td>${emp.category}</td>
    <td>${emp.ticketprice}</td>
    <td>${emp.quantity}</td>
    <td>${emp.eventdate}</td>
   
    <td><a href="buy/${emp.eventid}">Buy</a></td>
    
   
    </tr>
    </c:forEach>
  
	</table>
	


