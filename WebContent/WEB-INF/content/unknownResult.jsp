<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!-- 导入Struts 2的标签库 -->
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>未知Result的显示页</title>
</head>
<body>
	<h1>未知Result的显示页</h1>
	用户请求的Action：<s:property value="action"/><br />
	请求返回的Result：<s:property value="result"/><br />
</body>
</html>