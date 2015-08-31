<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
String collapseKey = "GCM_Message";
String message = "Generic Broadcast Message";

Object collapseKeyObj = request.getAttribute("CollapseKey");

if (collapseKeyObj != null) {
collapseKey = collapseKeyObj.toString();
}

Object msgObj = request.getAttribute("Message");

if (msgObj != null) {
message = msgObj.toString();
}

%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css"></link>
<link rel="stylesheet" href="css/bootstrap-theme.css"></link>
<title>Smart Feedback</title>

</head>
<body>


<div class="container">
<h1>Smart Notifications</h1>
<hr></hr>
<br></br>

<form action="vznotifications" id="notificationForm" method="post" style="display:none">
<label>Broadcast Message </label>
<br /><input type="text" name="CollapseKey" value="<%=collapseKey %>" />
<br/><textarea name="Message" rows="3" cols="60" ><%=message %></textarea>
<br/><input type="submit" name="submit" value="Submit" />
</form>

<table class="table">
<thead>
<th>S.NO</th>
<th>Customer Name</th>
<th>Device #</th>
<th>Status</th>
<th>Feedback</th>
<th>Quick Pay</th>
</thead>
<tbody>
<tr>
<td>1</td>
<td>Umashankar Masilamani</td>
<td>A123u312u434kj3k24j324...</td>
<td>Outstanding bill,Feedback not received</td>
<td><div class="btn btn-default feedback">Notify</div></td>
<td><div class="btn btn-default">Notify</div></td>
</tr>
<tr>
<td>2</td>
<td>Robinson</td>
<td>A123u312u434kj3k24j324...</td>
<td>Outstanding bill</td>
<td><div class="btn btn-default disabled feedback">Notify</div></td>
<td><div class="btn btn-default">Notify</div></td>
</tr>
<tr class="bg-success">
<td>3</td>
<td>Umashankar</td>
<td>A123u312u434kj3k24j324...</td>
<td>OK</td>
<td><div class="btn btn-default disabled feedback">Notify</div></td>
<td><div class="btn btn-default disabled">Notify</div></td>
</tr>
<tr>
<td>4</td>
<td>Rajendran</td>
<td>A123u312u434kj3k24j324...</td>
<td>Outstanding bill</td>
<td><div class="btn btn-default disabled feedback">Notify</div></td>
<td><div class="btn btn-default">Notify</div></td>
</tr>
<tr>
<td>5</td>
<td>Daniel</td>
<td>A123u312u434kj3k24j324...</td>
<td>Feedback not received</td>
<td><div class="btn btn-default feedback">Notify</div></td>
<td><div class="btn btn-default disabled">Notify</div></td>
</tr>
<tr class="bg-success">
<td>6</td>
<td>Vicky Joseph</td>
<td>A123u312u434kj3k24j324...</td>
<td>OK</td>
<td><div class="btn btn-default disabled feedback">Notify</div></td>
<td><div class="btn btn-default disabled">Notify</div></td>
</tr>
</tbody>
</table>

</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
</body>

</html>