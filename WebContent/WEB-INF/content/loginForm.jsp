
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title><s:property value="getText('loginPage')"/></title>
</head>
<body>
<!-- 使用form标签生成表单元素 -->
<s:form action="login">
	<!-- 生成一个用户名文本输入框 -->
	<s:textfield name="username" key="user"/>
	<!-- 生成一个密码文本输入框 -->
	<s:textfield name="password" key="pass"/>
	<!-- 生成一个提交按钮 -->
	<s:submit key="login"/>
    <input type="button" value="DMI" onclick="dodmi();"/>
    <input type="button" value="Dmethod" onclick="domethod();"/>
    <script type="text/javascript">
	function dodmi()
	{
		//获取该页面中的第一个表单元素
		targetForm = document.forms[0];
		//动态修改目标表单的action属性
		targetForm.action = "login!test";
		//提交表单
		targetForm.submit();
	}
        function domethod()
	{
		//获取该页面中的第一个表单元素
		targetForm = document.forms[0];
		//动态修改目标表单的action属性
		targetForm.action = "testaction";
		//提交表单
		targetForm.submit();
	}
	</script>
	
</s:form>
</body>
</html>

