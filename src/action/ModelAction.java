package action;

import model.UserBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ModelAction extends ActionSupport implements ModelDriven<UserBean> {
  private UserBean model=new UserBean(); 
  public UserBean getModel()
  {
	  return model;
  }
  public String execute() throws Exception
 {
		if (model.getUsername().equals("tim")
			&& model.getPassword().equals("123"))
		{
			// 通过ActionContext对象访问Web应用的HTTP Session
			ActionContext.getContext().getSession()
				.put("user" , model.getUsername());
			return SUCCESS;
		}
		else
		{
			return ERROR;
		}
	}
}
