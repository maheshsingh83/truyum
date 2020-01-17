<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Menu Item List</title>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="shortcut icon" href="images\truyum-logo-light.png" />
<script src="js\script.js" type="text/javascript"></script>
</head>
<body>
	<c:set var="menuItem" value="${menuItem}"></c:set>
	<header>
	<h1>truYum</h1>
	<img src="images\truyum-logo-light.png" alt="img" width="50"
		height="50" /> <nav> <a class="menu"
		href="ShowMenuItemListAdmin">Menu</a></nav> </header>

	<h2>Edit Menu Item</h2>
	<form name="menuItemForm" onsubmit="return validationMenuItemForm()"
		method="post" action="EditMenuItem">
		<input type="hidden" name="id" value="${menuItem.getId()}" />
		<table class="box" cellpadding="4" cellspacing="6">

			<tr>
				<td><label for="name">Name</label></td>
			</tr>
			<tr>
				<td colspan="4"><input id="name" name="name" type="text"
					value="${menuItem.getName()}" width="60%" size="80%"
					autocomplete="off" spellcheck="false"></td>
			</tr>
			<tr>
				<td><label for="text-price"><b>Price (Rs.)</b></label></td>
				<td>Active</td>
				<td><label for="textDOB">Date of launch</label></td>
				<td><label for="category">Category</label></td>
			</tr>

			<tr>
				<td><input type="text" name="price"
					value="${menuItem.getPrice()}" /></td>

				<td><c:choose>
						<c:when test="${menuItem.isActive()==true}">
							<input type="radio" value="Yes" name="active" checked="checked">Yes
							<input type="radio" value="No" name="active">No
		     						</c:when>
						<c:otherwise>
							<input type="radio" value="Yes" name="active" />Yes
		     						    <input type="radio" value="No" name="active"
								checked="checked" />No
		     						   </c:otherwise>
					</c:choose></td>

				<td><f:formatDate value="${menuItem.getDateOfLaunch()}"
						pattern="dd/MM/yyyy" var="dateOfLaunch" /> <input type="text"
					id="date" name="dateOfLaunch" value="${dateOfLaunch}" /></td>
				<td><select name="category" id="catergory" >
					<option value="${menuItem.getCategory()}">${menuItem.getCategory()}</option>
					<option>Starters</option>
					<option>Main Course</option>
					<option>Dessert</option>
					<option>Drinks</option>
					</select>
					</td>
			</tr>

			<tr>
				<td colspan="2"><c:choose>
						<c:when test="${menuItem.isFreeDelivery()==true}">
							<input type="checkbox" name="freeDelivery" value="Yes"
								checked="checked" />
						</c:when>
						<c:otherwise>
							<input type="checkbox" name="freeDelivery" value="No" />
						</c:otherwise>
					</c:choose> Free Delivery</td>
			<tr>
				<td colspan="2"><input class="button" type="submit"
					value="Save" name="sub"></td>
			</tr>



		</table>
	</form>
	</div>
	<footer>
	<p>Copyright &copy; 2019</p>
	</footer>
</body>
</html>
