
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>异常处理页面</title>
</head>
<body>
	 异常信息：
         <s:property value="exception"/></br>
         异常堆栈信息：
         <s:property value="exceptionStack"/></br>
         
</body>
</html>
