<html>
<head>
<title>JSP Calculator</title>
</head>

<body>

<h2>Simple Calculator</h2>

<form method="post">

Enter First Number:
<input type="text" name="num1">
<br><br>

Enter Second Number:
<input type="text" name="num2">
<br><br>

Select Operation:
<select name="operation">
<option value="add">Addition</option>
<option value="sub">Subtraction</option>
<option value="mul">Multiplication</option>
<option value="div">Division</option>
</select>

<br><br>

<input type="submit" value="Calculate">

</form>

<hr>

<%
String n1 = request.getParameter("num1");
String n2 = request.getParameter("num2");
String op = request.getParameter("operation");

if(n1 != null && n2 != null)
{
    double a = Double.parseDouble(n1);
    double b = Double.parseDouble(n2);
    double result = 0;

    if(op.equals("add"))
        result = a + b;

    else if(op.equals("sub"))
        result = a - b;

    else if(op.equals("mul"))
        result = a * b;

    else if(op.equals("div"))
        result = a / b;

%>

<h3>Result = <%= result %></h3>

<%
}
%>

</body>
</html>