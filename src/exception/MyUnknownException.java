package exception;

import org.apache.struts2.dispatcher.ServletDispatcherResult;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.Result;
import com.opensymphony.xwork2.UnknownHandler;
import com.opensymphony.xwork2.XWorkException;
import com.opensymphony.xwork2.config.entities.ActionConfig;

public class MyUnknownException implements UnknownHandler{
	    public ActionConfig handleUnknownAction(String namespace,
			String actionName) throws XWorkException
		{
			//...加入处理
			return null;
		}
		
		public Object handleUnknownActionMethod(Object action,
			String methodName)throws NoSuchMethodException
		{
			//...加入处理
			return "";
		}
		/**
		 * @param actionContext 该Result所在ActionContext。
		 * @param actionName 该Result所在的Action名。
		 * @param actionConfig 该Result所在ActionContext。
		 * @param resultCode 该Result所对应的逻辑视图字符串。
		 * @return 将要被处理的结果，可以返回null。
		 */
		public Result handleUnknownResult(ActionContext actionContext,
			String actionName, ActionConfig actionConfig,
			String resultCode) throws XWorkException
		{
			actionContext.put("action" , actionName);
			actionContext.put("result" , resultCode);
			//总是转入unknownResult.jsp页面
			return new ServletDispatcherResult(
				"/WEB-INF/content/unknownResult.jsp");
		}
}
