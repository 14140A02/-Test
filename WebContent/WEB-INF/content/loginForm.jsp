
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title><s:property value="getText('loginPage')"/></title>
</head>
<body>
<!-- ʹ��form��ǩ���ɱ�Ԫ�� -->
<s:form action="login">
	<!-- ����һ���û����ı������ -->
	<s:textfield name="username" key="user"/>
	<!-- ����һ�������ı������ -->
	<s:textfield name="password" key="pass"/>
	<!-- ����һ���ύ��ť -->
	<s:submit key="login"/>
    <input type="button" value="DMI" onclick="dodmi();"/>
    <input type="button" value="Dmethod" onclick="domethod();"/>
    <script type="text/javascript">
	function dodmi()
	{
		//��ȡ��ҳ���еĵ�һ����Ԫ��
		targetForm = document.forms[0];
		//��̬�޸�Ŀ�����action����
		targetForm.action = "login!test";
		//�ύ��
		targetForm.submit();
	}
        function domethod()
	{
		//��ȡ��ҳ���еĵ�һ����Ԫ��
		targetForm = document.forms[0];
		//��̬�޸�Ŀ�����action����
		targetForm.action = "testaction";
		//�ύ��
		targetForm.submit();
	}
	</script>
	
</s:form>
</body>
</html>

