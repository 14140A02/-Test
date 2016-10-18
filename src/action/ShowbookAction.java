package action;
import service.BookService;

import com.opensymphony.xwork2.Action;

public class ShowbookAction implements Action {
	private String[] books;
		
    public String[] getBooks() {
		return books;
	}


	public void setBooks(String[] books) {
		this.books = books;
	}


	public String execute()
    {   
		BookService bs = new BookService();
		// 将业务逻辑组件的返回值设置成该Action的属性
		setBooks(bs.getBooks());
		return SUCCESS;
    }
}
