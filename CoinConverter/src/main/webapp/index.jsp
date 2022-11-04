<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to the Java EE World</title>
<!-- Script to catch empty string, 0 or less, and none number value -->
<script type="text/javascript">
	function validate() {
		if (document.myForm.userCents.value == "") {
			alert("Please enter a coin amount!");
			document.myForm.userCents.focus();
			return false;
		}
		if (document.myForm.userCents.value <= 0) {
			alert("Please enter a positive coin amount!");
			document.myForm.userCents.focus();
			return false;
		}
		if (isNaN(document.myForm.userCents.value)) {
			alert("Please enter a number amount!");
			document.myForm.userCents.focus();
			return false;
		}
		return (true);
	}
</script>
</head>
<body>
	<h1>Coin Converter</h1>
	<form action="getCentsServlet" name="myForm"
		onsubmit="return(validate());" method="post">
		Enter the number of cents you have in a whole number: <input
			type="text" name="userCents" size="10"><input type="submit"
			value="Calculate Coins" />
	</form>
</body>
</html>