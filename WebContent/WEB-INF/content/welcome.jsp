<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>�ɹ�ҳ��</title>
</head>
<body>
	��ӭ${sessionScope.user}����ϵͳ�ж�ȡ��Cookieֵ��${cookie.password.value}<br/>
	��̬�������ò��ԣ�${answer}<br/>
	<a href="${pageContext.request.contextPath}/book/getBooks">�鿴ͼ��</a>
</body>
</html>
