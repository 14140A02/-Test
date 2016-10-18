package service;

public class BookService {
	private String[] books = new String[] {
			"疯狂Java讲义" ,
			"疯狂Android讲义" ,
			"轻量级Java EE企业应用实战",
			"疯狂Ajax讲义",
			"疯狂XML讲义",
		};
	//业务逻辑方法，该方法返回全部图书
	public String[] getBooks()
	{
		return books;
	}
	//test
}
