package jspObject;

import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;

public class Ctrl1 {
	PageContext page;
	JspWriter out = page.getOut(); 
	
	HttpSession session = page.getSession();
	
}
