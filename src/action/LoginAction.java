package action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements ServletResponseAware {
  private String username;
  private String password;
  private String answer;
  private HttpServletResponse resp;
  public void setServletResponse(HttpServletResponse response){
	  this.resp=response;
  }
  public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}


public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getAnswer() {
	return answer;
  }
  public void setAnswer(String answer) {
	this.answer = answer;
  }
  public String execute() throws Exception
	{
	    if(getUsername().equalsIgnoreCase("user"))
	    {
	    	throw new MyException("自定义错误");
	    }
		if (getUsername().equals("tim")&& getPassword().equals("123"))
		{
			// 通过ActionContext对象访问Web应用的HTTP Session
			ActionContext.getContext().getSession()
				.put("user" , username);
			Cookie c=new Cookie("password",getPassword());
			c.setMaxAge(60*60);
			resp.addCookie(c);
			//return "model";
			//return SUCCESS;
			return "exp";
		}
		else
		{
			return ERROR;
		}
	}
  public String test() throws Exception{
	  setAnswer("动态方法测试成功");
	  return SUCCESS;
  }
  }

