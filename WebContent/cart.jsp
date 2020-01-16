<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Admin Menu List</title>
	<link rel="stylesheet" type="text/css" href="styles\style.css"/>
	<link rel="shortcut icon"  href="images\truyum-logo-light.png"/>
</head>
<body>
      <header>
			<h1>truYum</h1>
			<img src="images\truyum-logo-light.png" alt="img" width="50" height="50"/>
			<nav><a  class="menu" href="ShowMenuItemListCoustomer">Menu</a>
			<a href="ShowCart" class="cart">Cart</a></nav>
	  </header>
	  
	  <h2>Cart</h2>
	          <h3><b>Items removed from the cart Successfully</b></h3>
		  
		 <c:set var="cart" value="${cart}" ></c:set>
	    <table class="box"  cellpadding="4" cellspacing="6">
		<col width="300">
		
	    
			<tr>
				<th class="title-name">Name</th>
				<th class="title-text">Free Delivery</th>
				<th class="title-price">Price</th>
				<th></th>
				
			</tr>
			
			<c:forEach items="${menuItem}" var="menuItem">
			<tr>
				<td class="title-name">${menuItem.getName()}</td>
				<td class="title-text"><c:choose>
						<c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
						<c:otherwise>No</c:otherwise>
					</c:choose></td>

				<td class="title-text">${menuItem.getPrice()}</td>
				
				<td class="title-text"><a href="RemoveCart?menuItemId=${menuItem.getId() }">Delete</a></td>
			</tr>
		</c:forEach>
			
			<tr>
				<td></td>
				<td><b>Total</b></td>
				<td><b>Rs. ${cart.getTotal()}</b></td>
				<td></td>
			</tr>
			
		</table>
               
		<footer>
				<p>Copyright &copy; 2019</p>
		</footer>
</body>
</html>	