<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>成功页面</title>
</head>
<body>
	欢迎${sessionScope.user}，从系统中读取的Cookie值：${cookie.password.value}<br/>
	动态方法调用测试：${answer}<br/>
	<a href="${pageContext.request.contextPath}/book/getBooks">查看图书</a>
</body>
</html>
